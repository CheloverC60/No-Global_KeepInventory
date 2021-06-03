#by Chelover_C60
loot spawn ~ ~ ~ loot keepinventory:item
data modify entity @e[type=item,nbt={Item:{tag:{keepinventory_looteditem:1b}}},distance=..5,sort=nearest,limit=1] Item set from storage keepinventory:inventory item[0]
data remove storage keepinventory:inventory item[0]
execute if data storage keepinventory:inventory item[0] run function keepinventory:loot_once