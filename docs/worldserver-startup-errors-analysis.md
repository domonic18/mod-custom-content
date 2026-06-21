# worldserver 启动报错分析（mod-custom-content 相关）

## 日志来源

`/Users/deadwalk/Workspace/acore-deploy/logs/red-errors-20260621-161805.log`

## 总体结论

`db-import` 已经能正常升级，但 worldserver 启动时对 `item_template`、`creature_template`、`creature_loot_template` 等表做运行时校验，发现 mod-custom-content 的若干数据与核心/DBC 约束不一致。主要分为两类：

1. **item_template 字段值不合法**（displayid、class/subclass、material、InventoryType、Sheath）。
2. **creature_loot_template Entry 与 `creature_template.lootid` 不匹配**（奥妮克希亚）；卡雷苟斯掉落经源码确认已修复。

> 注：
> - 文档原 2.3（强化魔铁箱）和 2.4（远征补给包）小节描述的问题在当前数据库/日志中并不存在，已去除。
> - 伪装宝珠（97001 / 97002）已迁移到 `mod-costumes`，后续相关装扮道具统一在 `mod-costumes` 中管理。

下面按模块逐项列出。

---

## 1. item_template 字段校验失败

### 1.1 经验加成合剂（90000）

报错：

```text
Item (Entry: 90000) does not have a correct display id (22191), must be 37851.
```

| 字段 | 当前值 | 建议值 | 说明 |
|------|--------|--------|------|
| `displayid` | 22191 | 37851 | 合剂类物品的 display id 必须存在且合法 |

影响文件：`2026_06_21_01_mcc_item_template_consumables.sql`

### 1.2 强效幻化精华（90001）

报错：

```text
Item (Entry: 90001) has wrong Subclass value (6) for class 0, must be (3).
Item (Entry: 90001) does not have a correct material (0), must be 3.
```

| 字段 | 当前值 | 建议值 | 说明 |
|------|--------|--------|------|
| `class` | 0 | 0 | 保持 Consumable |
| `subclass` | 6 | 3 | class=0 时 subclass 必须是 3（永久消耗品/药剂类） |
| `Material` | 0 | 3 | 对应 subclass 3 的材料要求 |

影响文件：`2026_06_21_01_mcc_item_template_consumables.sql`

### 1.3 商栈币（90100）

报错：

```text
Item (Entry: 90100) does not have a correct material (-1), must be 4.
```

| 字段 | 当前值 | 建议值 | 说明 |
|------|--------|--------|------|
| `Material` | -1 | 4 | 货币/令牌类物品 material 应为 4 |

影响文件：`2023_06_21_01_mcc_exchange_currency_coin_item.sql`

### 1.4 定制坐骑物品 displayid 不合法

实际日志中的报错条目（共 5 条）：

```text
Item (Entry: 90000) does not have a correct display id (22191), must be 37851.
Item (Entry: 91000) does not have a correct display id (31511), must be 95357.
Item (Entry: 91001) does not have a correct display id (31511), must be 95971.
Item (Entry: 97001) does not have a correct display id (6506), must be 62832.
Item (Entry: 166775) does not have a correct display id (16208), must be 100207.
```

> 注：`97001 伪装宝珠(憎恶)` 已随伪装宝珠整体迁移到 `mod-costumes`，详见 1.5 小节。

#### 原因

worldserver 启动时会校验 `item_template.displayid` 是否存在于客户端 `ItemDisplayInfo.dbc` 中。上述条目使用的 displayid 在 DBC 中无效，因此核心在日志中给出它认为合法的替代值。

- `90000` 使用 `22191` → 已改为 `37851`
- `91000` 使用 `31511` → 已改为 `95357`
- `91001` 使用 `31511` → 已改为 `95971`
- `97001` 使用 `6506` → 已改为 `62832`
- `166775` 使用 `16208` → 已改为 `100207`

#### 影响文件

| 物品 entry | 名称 | 原 displayid | 新 displayid | 影响文件 |
|-----------|------|-------------|-------------|---------|
| 90000 | 经验加成合剂 | 22191 | 37851 | `2026_06_21_01_mcc_item_template_consumables.sql` |
| 91000 | 梦光符文牡鹿 | 31511 | 95357 | `2023_06_23_07_mcc_custom_mounts_batch1.sql` |
| 91001 | 熔火恶犬 | 31511 | 95971 | `2023_06_23_07_mcc_custom_mounts_batch1.sql` |
| 166775 | 狡狐魔使 | 16208 | 100207 | `2024_04_12_01_mcc_custom_mounts_batch3.sql` |

> 注：`97001 伪装宝珠(憎恶)` 已迁移到 `mod-costumes`，不在 mod-custom-content 中处理。

> 注：当前数据库中 90000 仍显示旧 displayid，是因为 `db-import` 尚未重新执行；对应 SQL 文件已修正。91000、91001、166775 的 SQL 文件本次已同步修正。97001 已迁移到 `mod-costumes`。

#### 后续建议

日志中只暴露了这 5 个校验失败的条目。同批次 SQL 中 `91002~91004` 等也使用了 `31511`，但本次日志未触发报错（可能因日志截断或校验顺序）。建议在重新 `db-import` 并启动 worldserver 后，再收集一次 `"does not have a correct display id"` 日志，对剩余使用 `31511` 的坐骑批量修正。

---

## 2. creature_loot_template 与 lootid 不匹配（待处理）

### 2.1 奥妮克希亚（10184）

报错：

```text
Table 'creature_loot_template' Entry 10184 isn't creature entry and not referenced from loot, and thus useless.
```

- 部分环境中 `creature_template.entry = 10184` 的 `lootid` 可能不是 10184（例如带有 `mod-progression-system` 时为 54003）。
- 当前数据库中 `lootid = 54003`，因此 `creature_loot_template.Entry = 10184` 的记录处于未引用状态。
- 此问题与 `mod-progression-system` 的渐进实现有关，暂不修改模块 SQL。

影响文件：`2023_08_27_01_mcc_custom_mount_loot_batch2.sql`

---

### 2.2 卡雷苟斯（24850）— 已修复

原报错：

```text
Table 'creature_loot_template' Entry 24850 isn't creature entry and not referenced from loot, and thus useless.
```

原因：
- `creature_template.entry = 24850`（Kalecgos）的 `lootid = 0`，因为卡雷苟斯在战斗结束时被解救，真正的可拾取尸体是萨索瓦尔（Sathrovarr the Corruptor，entry 24892）。
- `creature_template.entry = 24892` 的 `lootid = 24892`，因此坐骑掉落应写入 `creature_loot_template.Entry = 24892`。

修复：已将 `2024_04_12_02_mcc_custom_mount_loot_batch3.sql` 中的掉落从 `24850` 改为 `24892`。

---

## 3. 其它说明

- `reference_loot_template` 中 `910001`、`910002` 的 `LootMode=0` 报错不是 mod-custom-content 产生的，暂不处理。
- `creature_loot_template` 中 `12129`、`15741`、`15742` 的报错未在 mod-custom-content SQL 中找到对应插入语句，不是本模块问题。
- `Updates.ExceptionShutdownDelay` 只是配置提示，不会导致启动失败。

---

## 4. 建议的修复顺序

1. **先修复 item_template 的非 displayid 问题**（90000、90001、90100、97001/97002），这些修改明确且无依赖。  
2. **处理奥妮克希亚 lootid 不匹配**：确认 `mod-progression-system` 当前启用的阶段后，决定是否将坐骑掉落从 `10184` 切到当前实际 `lootid`。  
3. **批量修复坐骑 displayid**：
   - 先应用第 1、2 步，重新启动 worldserver。
   - 收集新一轮 `"does not have a correct display id"` 日志。
   - 用脚本批量生成 UPDATE 语句，更新到对应的 SQL 文件。
4. 每次修改后跑 `codestyle-sql.py` 并重新 `db-import` + 启动 worldserver 验证。
