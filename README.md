This is a datapack that can make the gamerule keepInventory no longer a global settings.  
这是一个可以让死亡不掉落不再是全局设定的数据包

**Attention:** After loading this datapack, gamerule *keepInventory* will be automatically set to true, and players no longer drop exp after being killed. There is no good solution at present.  
**注意：** 加载数据包会自动开启死亡不掉落，这会导致玩家不再掉落经验球。目前尚无较为理想的解决方案。

# How to use
用法

Load this datapack in minecraft 1.15+.  
于1.15+版本加载数据包

Using */tag* command to add tag to players.  
使用 */tag* 命令为玩家添加标签。

In default mode, players will keep their inventories after dead if they have the *keep* tag, or loot everything if they don't have.  
在默认模式下，拥有 *keep* 标签的玩家在死亡后会保留所有物品，否则会掉落所有物品。

In reverse mode, players will loot everything after dead if they have the *loot* tag, or keep their inventory if they have.  
在反转模式下，拥有 *loot* 标签的玩家在死亡后会掉落所有物品，否则会保留所有物品。

Using `/scoreboard players set mode keep_info <模式>` to change the mode. 0 means the default mode, and 1 means the reverse mode.  
使用`/scoreboard players set mode keep_info <模式>`改变掉落规则，其中0为默认模式，1为反转模式。

# Command API
命令接口

This datapack provides two function API in the form of function tag.  
这个数据包以函数标签的形式提供了两个函数接口。

Functions with tag *keepinventory:before_loot* will be run after a player dead, and before the main module was executed.  
拥有 *keepinventory:before_loot* 标签的函数将会在玩家死亡后，主要模块执行前运行。

Functions with tag *keepinventory:after_loot* will be run after the main module was executed.  
拥有 *keepinventory:after_loot* 标签的函数将会在主要模块执行后运行。

This will allow map makers to make items that can keep the player's inventory, and the item can be disposable.  
这将允许地图作者制作死亡不掉落的道具，甚至道具可以是一次性的。

By writting down the selection that weather the player covers the item or not in *keepinventory:before_loot* to decide add or remove the *keep* tag, and writting down how to deal with the item in *keepinventory:after_loot*, the map maker can make an item that can keep a player's inventory.  
通过在 *keepinventory:before_loot* 中写入玩家持有物品的判断来决定为玩家添加或移除 *keep* 标签，并在 *keepinventory:after_loot* 中写入物品激活后的处理方式，即可做出保留物品栏的道具。