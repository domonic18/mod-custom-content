# mod-custom-content

本服务器自定义功能相关 SQL 的集中维护模块,按 AzerothCore 模块目录规范组织。
所有 SQL 均为 **world 库(`acore_world`)** 内容,目前采用**手动导入**方式。

> 说明:本模块只用于 SQL 的版本化维护,不包含 C++ 源码、不参与编译,
> 因此没有 `src/`、`CMakeLists.txt`。如需后续接入 AzerothCore 的自动导入,
> 当前 `data/sql/db-world/` 的目录结构已与官方更新器扫描规则兼容。

## 目录结构

```
data/sql/db-world/
├── custom-mounts/        自定义坐骑(item_template / item_loot_template / 每日任务 / 硬核奖励)
├── exchange-currency/    商栈币(自定义货币 item、itemextendedcost_dbc、旧世 Boss 掉落)
├── achievements/         成就明细(achievement_dbc 覆盖)
├── badge-drop-control/   WLK 阶段牌子掉落控制(分阶段)
├── progression-unlock/   渐进开放(按 bracket 阶段解锁地图 / 调整掉落)
│   ├── bracket-61-64/
│   ├── bracket-70-2-1/
│   └── bracket-70-5/
├── keep-out-zones/       配置禁入区域(mod_mko_map_lock,配合 mod-keep-out)
├── reputation-quests/    声望任务修复(奥尔多 / 占星者)
└── battleground-gear/    战场装备控制(PvP 套装等级改为 81 级)

docs/
└── 277战场装列表.xlsx    战场装备参照表(非 SQL,仅作参考)
```

## 手动导入

所有文件均针对 `acore_world` 库。逐功能或整体导入皆可,例如:

```bash
# 单个功能目录
for f in data/sql/db-world/custom-mounts/*.sql; do
  mysql -u<user> -p acore_world < "$f"
done

# 整个模块(注意 .SQL / .sql 大小写后缀都要覆盖)
find data/sql/db-world -type f \( -iname '*.sql' \) -print0 \
  | xargs -0 -I{} mysql -u<user> -p acore_world < "{}"
```

> 文件内多为 `DELETE` + `INSERT` 形式,可重复导入(幂等)。导入顺序一般无强依赖;
> `exchange-currency` 中 `item_template_coin_create.sql` 建议先于其依赖的掉落表导入。

## 维护约定

- 新增自定义 SQL 时,放入对应功能子目录;没有合适分类则新建一个英文命名的子目录。
- 文件名沿用原始命名(含中文),以保留可追溯性。
- 仅维护 world 库内容;若将来出现 characters / auth 库的自定义 SQL,
  新建 `data/sql/db-characters/`、`data/sql/db-auth/` 平级目录存放。

## 来源

原始 SQL 来自独立仓库 `G:\wow_dev_server\SQL`,已整理迁入本模块统一维护。
