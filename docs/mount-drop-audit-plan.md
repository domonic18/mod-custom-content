# 定制坐骑掉落对照与修正方案

## 目标
- 将 `mod-custom-content` 中所有定制坐骑的掉落与 `https://lokta.cn/?p=2164` 给出的权威 BOSS/坐骑对照表逐条核对。
- 修正已知的 `熔火恶犬` 错误归属（当前在 batch1 中挂在 `Emperor Dagran Thaurissan`，应为 `Magmadar`）。
- 删除重复掉落，补齐缺失掉落，保证所有 SQL 仍符合 AzerothCore 模块更新规范。

## 步骤

### 1. 数据提取
编写一次性解析脚本，读取以下目录的全部 `.sql`：
- `modules/mod-custom-content/data/sql/db-world/updates/`
- `modules/mod-challenge-modes/data/sql/db-world/updates/`

提取两类信息：
- `item_template`：`entry` → `name`（重点是 class=15、subclass=5 的坐骑）。
- `creature_loot_template` / `gameobject_loot_template` / `item_loot_template`：`(Entry, Item)` 对，即“哪个 BOSS/容器掉落哪个坐骑”。

### 2. 建立权威对照表
使用已从网页提取的“副本 / BOSS / 坐骑”三列列表作为权威源：
- BOSS 中文名 → `creature_entry`：优先使用 SQL 注释中已给出的 entry；若某 BOSS 在现有 SQL 中未出现，则通过已知 creature 表或 Wowhead/AzerothCore 数据补全。
- 坐骑中文名 → `item_entry`：从第 1 步的 `item_template` 映射获取。

### 3. 差异对比
生成两张集合：
- **当前 SQL 中的 BOSS-坐骑对**
- **权威列表中的 BOSS-坐骑对**

识别并分类差异：
1. **错误 BOSS**：坐骑挂在错误的 creature entry 上（如 `熔火恶犬` 挂在 9019）。
2. **重复掉落**：同一坐骑被多个 BOSS 掉落，但权威表只对应一个 BOSS。
3. **缺失掉落**：权威表中有，但 SQL 中无对应记录。
4. **多余掉落**：SQL 中有，但权威表中无对应记录。

### 4. 具体已知问题处理
- 在 `2023_06_23_08_mcc_custom_mount_loot_batch1.sql` 中：
  - 删除 `Emperor Dagran Thaurissan (9019) → 熔火恶犬 (91001)` 的记录。
  - 因为 `Magmadar (11982) → 熔火恶犬 (91001)` 已经在 `2023_08_27_01_mcc_custom_mount_loot_batch2.sql` 中存在，所以 batch1 中直接移除，而不是再新增一条。

### 5. SQL 修正
- 只修改 `modules/mod-custom-content/data/sql/db-world/updates/` 下的文件。
- 保持每条 `INSERT` 前都有对应的 `DELETE`，确保幂等。
- 更新注释，使 BOSS 中文名/英文名与权威表一致。
- 不修改 `data/sql/base/`、`data/sql/archive/` 或 `data/sql/updates/db_*/` 等只读目录。

### 6. 校验
- 运行 `python apps/codestyle/codestyle-sql.py`（如可用），确认 SQL 格式无违规。
- 重新运行解析脚本，确认：
  - 无重复掉落；
  - 权威表中所有坐骑都有对应记录；
  - 所有 `INSERT` 都有前置 `DELETE`。

### 7. 提交与推送
- `mod-custom-content`：在 `master` 分支提交坐骑掉落修正。
- `mod-challenge-modes`：如有相关变更，在 `develop` 分支提交。
- 提交信息使用规范格式，例如：
  - `fix(db/mounts): remove duplicate Magmadar mount drop from batch1`
  - `fix(db/mounts): align custom mount drops with lokta drop table`

## 当前已确认的修正点
| 坐骑 | 当前 BOSS (entry) | 正确 BOSS (entry) | 处理 |
|------|------------------|-------------------|------|
| 熔火恶犬 (91001) | Emperor Dagran Thaurissan (9019) | Magmadar (11982) | 从 batch1 删除，batch2 中已存在正确记录 |
| 骑乘巨鼠 (138387) | Charlga Razorflank (4421) | 唤地者哈穆加 (4842) | batch3 中改为 4842 |

## 已确认不修改项
| 坐骑 | 文档要求 | 实际情况 | 结论 |
|------|----------|----------|------|
| 阿坎迪安战龟 | 文档链接 item=141713 | 数据库中实际使用 `item_template.entry = 166465` | 保持 `166465` 不变 |
| 棕色骑乘骆驼 | 文档 BOSS 名是“寒冰之王亚门纳尔”，但链接写的是 npc=18831 | 18831 是莫加尔大王（已对应蜜背收割者），正确 BOSS 应为 `7358` | 保持 `7358` 不变，确认文档链接笔误 |

## 输出文件
本方案输出为 `docs/mount-drop-audit-plan.md`，实际脚本与差异结果将保存在 `/tmp/` 临时目录，不会污染仓库。
