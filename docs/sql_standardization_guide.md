# mod-custom-content SQL 标准化改造方案

## 背景与目标

`mod-custom-content` 实现了服务器特有的定制内容（商栈币、定制坐骑、战场装备、声望任务修复、地图锁区等）。目前这些 SQL 存在以下问题：

1. **目录结构不规范**：SQL 分散在 `data/sql/db-world/<feature>/` 下，不符合 AzerothCore 模块 updater 对 `base` / `updates` 的约定。
2. **文件名不规范**：存在中文名、大小写混用（`.SQL` / `.sql`）、日期格式不统一（`2023-6-23`）、同名文件冲突风险。
3. **缺少注释**：时间久后难以定位当时的工作目的。
4. **未接入自动更新**：手动导入容易出错，且无法利用 AzerothCore 的 `db-import` 在空库建库、有库增量更新。

本方案将 `mod-custom-content` 的 SQL 组织方式改造为 AzerothCore 标准模块规范，实现：

- 空数据库时自动建表/建基础数据。
- 有数据时按文件名顺序自动增量更新。
- 文件命名唯一、可读、可排序。
- 每条 SQL 都有清晰注释说明用途。

---

## AzerothCore 模块 SQL 加载机制

### 1. 扫描路径

worldserver 启动时，`DBUpdater` 会递归扫描以下路径的 `.sql` 文件：

```
<SourceDir>/modules/<module-name>/data/sql/db-auth/
<SourceDir>/modules/<module-name>/data/sql/db-characters/
<SourceDir>/modules/<module-name>/data/sql/db-world/
```

来源：`src/server/database/Updater/UpdateFetcher.cpp`

### 2. 递归扫描与文件名唯一性

`UpdateFetcher::FillFileListRecursively` 会递归进入子目录，把所有 `.sql` 文件加入待执行列表。

⚠️ **关键约束**：所有被扫描到的 SQL 文件名必须全局唯一（包括跨模块、跨 core updates）。如果存在同名文件，服务器启动会报错：

```
Duplicate filename "xxx.sql" occurred. Because updates are ordered by their filenames, every name needs to be unique!
```

因此，模块 SQL 文件名应避免使用通用名字（如 `mount.sql`、`update.sql`），推荐带模块前缀 + 日期 + 序号。

### 3. 执行顺序

文件按**文件名字符串排序**后依次执行。因此文件名必须能反映执行顺序，通常使用日期前缀：

```
2023_06_23_01_mcc_custom_mounts.sql
2023_08_26_01_mcc_custom_mounts.sql
2024_04_12_01_mcc_mount_loot.sql
```

### 4. 更新追踪（db-import 执行机制）

AzerothCore 通过 `acore_world`.`updates` 表记录已执行的 SQL 文件名和哈希。后续启动时：

| 场景 | db-import 行为 |
|---|---|
| 文件首次出现 | 执行 SQL，并在 `updates` 表写入 `name` + `hash` |
| 文件未变（hash 一致） | **跳过，不执行** |
| 文件内容变化且 `Updates.AllowRehash = 1` | **重新执行**，并更新 `hash` |
| 文件被删除 | 日志提示 orphaned entry，**不会自动回滚数据**，不影响启动 |

因此，**`db-world/updates/` 中的 SQL 默认只执行一次；只有文件内容变更时才会重新执行**。

#### 相关配置

在 `worldserver.conf` 中：

```ini
Updates.EnableDatabases = 31   # 开启哪些数据库的自动更新（掩码）
Updates.Redundancy = 1         # 冗余检查
Updates.AllowRehash = 1        # 允许文件变更后重新执行
Updates.ArchivedRedundancy = 0
Updates.CleanDeadRefMaxCount = 3
```

#### 数据更新到底由谁负责？

Updater 只决定「哪些文件要执行、是否重跑」；**具体数据如何更新，完全取决于 SQL 本身**。  
例如物品 `class` 从 `a` 变成 `b`：

- 如果 SQL 写成 `DELETE` + `INSERT` 完整记录 → 重新执行时会先删除旧记录，再插入新记录，数据被覆盖为 `b`。
- 如果 SQL 写成 `UPDATE item_template SET class = class + 1` → 重复执行会不断累加，导致数据错误。
- 如果 SQL 写成 `UPDATE item_template SET class = 2 WHERE entry = 91000` → 重复执行结果一致（幂等）。

---

## 推荐目录结构

```
modules/mod-custom-content/
├── data/
│   └── sql/
│       ├── db-auth/                    # 账号级数据（本模块暂无）
│       │   ├── base/
│       │   └── updates/
│       ├── db-characters/              # 角色级数据（本模块暂无）
│       │   ├── base/
│       │   └── updates/
│       └── db-world/                   # 世界数据（本模块全部内容）
│           ├── base/                   # 基础表结构与基础数据
│           │   └── mod_custom_content_base.sql
│           └── updates/                # 增量更新
│               ├── 2023_06_23_01_mcc_custom_mounts.sql
│               ├── 2023_06_23_02_mcc_custom_mount_loot.sql
│               ├── 2023_08_26_01_mcc_custom_mounts.sql
│               ├── 2023_08_27_01_mcc_custom_mount_loot.sql
│               ├── 2024_04_12_01_mcc_mount_daily_quest.sql
│               ├── 2024_04_12_02_mcc_mount_loot.sql
│               ├── 2024_04_12_03_mcc_mount_reward.sql
│               ├── 2025_01_26_01_mcc_razorfen_downs_mount_loot.sql
│               ├── 2025_01_27_01_mcc_demon_slayer_flying_mount_skill.sql
│               ├── 2023_06_23_03_mcc_battleground_gear_item_level_226.sql
│               ├── 2023_06_23_04_mcc_battleground_gear_item_level_232.sql
│               ├── ...
│               ├── 2023_06_23_05_mcc_exchange_currency_classic_boss_loot.sql
│               ├── 2023_06_23_06_mcc_exchange_currency_item_template.sql
│               ├── 2023_06_23_07_mcc_exchange_currency_item_extended_cost.sql
│               ├── 2023_06_23_08_mcc_achievement_dbc.sql
│               ├── 2023_06_23_09_mcc_reputation_quest_fix.sql
│               ├── 2023_06_23_10_mcc_keep_out_map_lock.sql
│               └── 2023_06_23_11_mcc_badge_drop_wlk_phase2.sql
├── docs/
│   └── sql_standardization_guide.md    # 本文档
├── src/
│   └── ...
├── README.md
└── ...
```

### 目录说明

| 目录 | 用途 |
|---|---|
| `db-world/base/` | 创建模块专属表、插入不会随版本变化的基础数据。本模块若无独立新表，可只放一个汇总的基础数据文件，或留空仅使用 `updates/`。 |
| `db-world/updates/` | 按时间顺序存放所有对世界数据的修改。包括新增坐骑、调整掉落、修复任务、增加商栈币掉落等。 |
| `db-auth/` / `db-characters/` | 若未来需要账号/角色级数据，按同样 `base` + `updates` 结构存放。目前可只放 `.gitkeep`。 |

---

## 文件命名规范

统一格式：

```
YYYY_MM_DD_NN_mcc_<short_description>.sql
```

| 段 | 含义 | 示例 |
|---|---|---|
| `YYYY_MM_DD` | 日期，表示该 SQL 的生效/编写日期 | `2023_06_23` |
| `NN` | 当天序号，避免同一天多个文件重名 | `01`、`02` |
| `mcc` | 模块前缀（mod-custom-content），防止与其他模块/ core updates 文件名冲突 | `mcc` |
| `<short_description>` | 简短英文描述，多个单词用下划线连接 | `custom_mounts`、`mount_loot`、`exchange_currency` |

### 改造示例

| 原文件名 | 改造后文件名 |
|---|---|
| `custom-mounts/2023-6-23mount.sql` | `updates/2023_06_23_01_mcc_custom_mounts.sql` |
| `custom-mounts/2023-6-23mount_loot.sql` | `updates/2023_06_23_02_mcc_custom_mount_loot.sql` |
| `custom-mounts/2024-4-12mount_loot.sql` | `updates/2024_04_12_02_mcc_mount_loot.sql` |
| `custom-mounts/2025-1-26mout_loot_修改剃刀沼泽掉落.sql` | `updates/2025_01_26_01_mcc_razorfen_downs_mount_loot.sql` |
| `custom-mounts/2025-1-27mount_修复屠魔者飞行坐骑技能为150.sql` | `updates/2025_01_27_01_mcc_demon_slayer_flying_mount_skill.sql` |
| `exchange-currency/经典旧世Boss掉落商栈币.sql` | `updates/2023_06_23_05_mcc_exchange_currency_classic_boss_loot.sql` |
| `battleground-gear/修改暴怒277装备为81级.sql` | `updates/2023_06_23_12_mcc_battleground_gear_furious_277_item_level_81.sql` |
| `reputation-quests/修复奥尔多_占星者声望任务.sql` | `updates/2023_06_23_09_mcc_reputation_quest_aldor_scryer_fix.sql` |

---

## SQL 注释规范

每个 SQL 文件头部必须包含以下注释块：

```sql
-- ============================================================
-- mod-custom-content: <简短标题>
-- Date: YYYY-MM-DD
-- Author: <作者/维护者>
-- Description:
--   <详细说明本次 SQL 的作用、影响范围、关联 issue 或需求>
-- Database: db-world
-- Related Files: <可选，关联的 C++ 文件或其他 SQL>
-- ============================================================
```

### 示例

```sql
-- ============================================================
-- mod-custom-content: 经典旧世团队首领掉落商栈币
-- Date: 2023-06-23
-- Author: maintainer
-- Description:
--   为熔火之心、黑翼之巢、安其拉、纳克萨玛斯等经典旧世
--   团队首领添加 custom currency（item 90100）掉落，支持商栈币兑换系统。
-- Database: db-world
-- Related Items: 90100
-- ============================================================

-- Ragnaros
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11502) AND (`Item` = 90100);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11502, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');

-- Garr
DELETE FROM `creature_loot_template` WHERE (`Entry` = 12057) AND (`Item` = 90100);
INSERT INTO `creature_loot_template` (...) VALUES
(12057, 90100, 0, 100, 0, 1, 0, 2, 2, '商栈币');
```

### 中间注释

文件内部不同段落之间也应加注释，便于快速定位：

```sql
-- --------------------------------------------------------
-- 1. 定制坐骑：梦光符文牡鹿
-- --------------------------------------------------------
DELETE FROM `creature_template` WHERE `entry` = 9140000;
INSERT INTO `creature_template` (...) VALUES (...);

-- --------------------------------------------------------
-- 2. 定制坐骑：熔火恶犬
-- --------------------------------------------------------
DELETE FROM `creature_template` WHERE `entry` = 9140001;
INSERT INTO `creature_template` (...) VALUES (...);
```

---

## SQL 幂等性要求

为了让同一条 SQL 可以安全地多次执行（手动重跑或 updater 重新哈希后重跑），必须遵守以下规则。

### 1. INSERT 前必须先 DELETE

AzerothCore 强制要求：每个 `INSERT` 前必须有匹配的 `DELETE`，保证重复执行时数据不会被重复插入。

```sql
-- 正确
DELETE FROM `creature_template` WHERE `entry` = 9140000;
INSERT INTO `creature_template` (...) VALUES (...);

-- 错误
INSERT INTO `creature_template` (...) VALUES (...);
```

### 2. 修改已有数据优先使用 DELETE + INSERT

当一条已上线的记录需要变更字段（例如 `item_template.class` 从 `a` 变成 `b`），推荐用 `DELETE` + `INSERT` 完整重新插入记录，而不是只 `UPDATE` 一个字段。

**原因**：

- `DELETE` + `INSERT` 让 SQL 文件本身就是该记录的完整快照，便于版本追溯。
- 重新执行时结果完全一致，不会出现部分字段被多次修改的混乱。

```sql
-- 推荐：完整覆盖
DELETE FROM `item_template` WHERE `entry` = 91000;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, ..., `VerifiedBuild`) VALUES
(91000, 2, 5, ..., 12340);

-- 可接受但不如上面清晰
UPDATE `item_template` SET `class` = 2, `subclass` = 5 WHERE `entry` = 91000;
```

### 3. UPDATE 必须是赋值型，禁止累加

错误的累加型 `UPDATE` 会在重复执行时无限叠加：

```sql
-- 正确：赋值型，重复执行结果一致
UPDATE `item_template` SET `ItemLevel` = 81, `RequiredLevel` = 81 WHERE `entry` IN (40001, 40002);

-- 错误：累加型，重复执行会越加越大
UPDATE `item_template` SET `ItemLevel` = `ItemLevel` + 10 WHERE `entry` = 40001;
```

### 4. CREATE TABLE 使用 IF NOT EXISTS

```sql
CREATE TABLE IF NOT EXISTS `mod_custom_content_log` (
    `id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `event` VARCHAR(255) NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

### 5. 删除已上线内容要新建 SQL

不能简单地删掉 SQL 文件，因为数据库里已经有数据了。应新建一条更新 SQL 显式清理：

```sql
-- 2024_06_22_01_mcc_remove_mount.sql
DELETE FROM `creature_template` WHERE `entry` = 9140100;
DELETE FROM `creature_model_info` WHERE `DisplayID` = 140100;
```

---

## 分库规则

| 数据库 | 应存放的内容 | 本模块当前示例 |
|---|---|---|
| `db-world` / `acore_world` | 物品、生物、任务、掉落、地图、成就、DBC 等静态数据 | 定制坐骑、商栈币掉落、战场装备、声望任务、地图锁区 |
| `db-auth` / `acore_auth` | 账号、权限、服务器列表 | 本模块暂无 |
| `db-characters` / `acore_characters` | 角色状态、背包、邮件、成就进度 | 本模块暂无 |

> 如果未来需要记录每个角色获得的商栈币数量、兑换记录等，应在 `db-characters` 中建表。

---

## 改造实施步骤

### 步骤 1：备份当前 SQL

```bash
cd modules/mod-custom-content
cp -r data/sql/db-world data/sql/db-world-backup-$(date +%Y%m%d)
```

### 步骤 2：创建新目录结构

```bash
mkdir -p data/sql/db-auth/base data/sql/db-auth/updates
mkdir -p data/sql/db-characters/base data/sql/db-characters/updates
mkdir -p data/sql/db-world/base data/sql/db-world/updates
```

### 步骤 3：整理现有 SQL 到新结构

按照「文件命名规范」逐一重命名并迁移到 `data/sql/db-world/updates/`。建议按以下顺序：

1. 先迁移不依赖其他文件的基础内容（如 `item_template` 创建）。
2. 再迁移依赖基础内容的文件（如 `creature_loot_template` 引用 item）。
3. 最后迁移修复/调整类文件。

> 注意：所有文件名必须全局唯一，建议全部使用 `mcc_` 前缀。

### 步骤 4：为每个 SQL 添加头部注释

按「SQL 注释规范」补充日期、作者、描述。

### 步骤 5：检查幂等性

确保每个 `INSERT` 前都有匹配的 `DELETE`，每个 `UPDATE` 都是赋值而非累加。

### 步骤 6：删除旧目录

确认新结构运行正常后：

```bash
rm -rf data/sql/db-world/achievements
rm -rf data/sql/db-world/badge-drop-control
rm -rf data/sql/db-world/battleground-gear
rm -rf data/sql/db-world/custom-mounts
rm -rf data/sql/db-world/exchange-currency
rm -rf data/sql/db-world/keep-out-zones
rm -rf data/sql/db-world/reputation-quests
```

### 步骤 7：本地/测试环境验证

1. 在测试服务器清空 `acore_world`（或还原到接近生产的状态）。
2. 启动 worldserver，观察 `sql.updates` 日志：
   - 应看到 `Updating World database...`
   - 应看到模块 SQL 被依次应用。
   - 不应出现 `Duplicate filename` 错误。
3. 二次启动应显示数据库已是最新，不再重复应用。

### 步骤 8：提交 Git

```bash
git add data/sql/
git commit -m "refactor(sql): standardize mod-custom-content SQL structure

- Move all SQL files to AzerothCore module convention
  (db-world/base + db-world/updates)
- Rename files to YYYY_MM_DD_NN_mcc_description.sql
- Add header comments to all SQL files
- Ensure idempotency with DELETE-before-INSERT"
```

---

## 验证 SQL 清单

改造完成后，在 `acore_world` 中执行以下查询验证：

```sql
-- 检查模块 SQL 是否已被 updater 记录
SELECT `name`, `state`, `hash`
FROM `updates`
WHERE `name` LIKE '2023_%_mcc_%'
   OR `name` LIKE '2024_%_mcc_%'
   OR `name` LIKE '2025_%_mcc_%'
ORDER BY `name`;

-- 检查是否有重复文件名风险（结果应只有 mod-custom-content 的文件）
SELECT `name`, COUNT(*) AS cnt
FROM `updates`
WHERE `state` = 'MODULE'
GROUP BY `name`
HAVING cnt > 1;
```

---

## 后续维护规范

1. **新增内容**：在 `data/sql/db-world/updates/` 新建 `YYYY_MM_DD_NN_mcc_xxx.sql`。

2. **修改内容**：
   - **尚未上线**（未合并到生产分支 / 未在 `updates` 表留下记录）→ 直接修改对应 SQL 文件。
   - **已经上线**（`updates` 表已有记录）→ **新建一条更新 SQL** 来修正，而不是修改历史文件。这样变更历史更清晰，也避免其他开发者看不到旧文件被改动。

3. **强制重新执行某条 SQL**：
   如果需要让 Updater 把某条已执行的 SQL 再跑一遍，可以删除 `acore_world.updates` 中的对应记录，然后重启 worldserver：

   ```sql
   DELETE FROM `updates` WHERE `name` = '2024_06_21_01_mcc_new_mount.sql';
   ```

4. **禁止**：
   - 不要再创建中文文件名。
   - 不要再使用 `.SQL` 大写扩展名。
   - 不要把 SQL 放到 `db-world/` 根目录或任意自定义子目录。
   - 不要写累加型 `UPDATE`。

5. **每次提交前**：运行本地 worldserver 一次，确认 updater 无报错。

---

## 参考

- `src/server/database/Updater/UpdateFetcher.cpp`
- `src/server/database/Updater/DBUpdater.cpp`
- 示例模块：`modules/mod-anticheat/data/sql/`、`modules/mod-keep-out/data/sql/`
- AzerothCore SQL 规范：`apps/codestyle/codestyle-sql.py`
