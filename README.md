# datapacks
夏沫之诗服务器数据包合集

## 分支表
- main
    * 主分支，提供最主要的服务器玩法
- hub
    * 大厅增强，提供无攻击冷却、疾跑加速等功能
    * **末影箱界面(egui)处于Alpha阶段，可能会出现一些意料之外的问题**
    * 采用独立维度，这样在部分小地图Mod上不会出现地图混乱的情况
- parkour
    * 限制主世界生成，用于缩减性能开销
- auth
    * 身份验证
    * 采用独立维度，这样在部分小地图Mod上不会出现地图混乱的情况
- dev/xxx
    * 开发分支

## 使用
克隆到存档的datapacks目录中，通过`git checkout`切换到相应分支，然后重启服务器/重新进入存档/重载数据包即可。

**我们不建议对同一存档切换不同的合集分支使用，这可能会导致兼容问题乃至存档损坏。请在切换/应用前备份原存档。**

**对结构、地形生成的修改不会影响现有区块。**

## 第三方数据包集成

此分支集成了以下内容，以提供更好的服务器体验：
* [Gamemode4Dev的Gamemode4数据包](https://github.com/Gamemode4Dev/GM4_Datapacks)
* [Starmute的Terralith](https://www.planetminecraft.com/data-pack/terralith-overworld-evolved-100-biomes-caves-and-more/)
* [GentlemanRevvnar的Pillager Stronghold](https://www.planetminecraft.com/data-pack/pillager-stronghold-1-16-5-worldgen-no-structure-replacement/)
* [GentlemanRevvnar的1.18.2 Improved Desert Village Structure Datapack](https://www.planetminecraft.com/data-pack/1-14-x-improved-desert-village-datapack/)