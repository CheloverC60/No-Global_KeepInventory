#by Chelover_C60
loot spawn ~ ~ ~ loot keepinventory:item
data modify entity @e[type=item,limit=1,tag=!keepinventory_temp,distance=..1] Item set from storage keepinventory:inventory item[0]
data remove storage keepinventory:inventory item[0]
tag @e[type=item,limit=1,tag=!keepinventory_temp,distance=..1] add keepinventory_temp
execute if data storage keepinventory:inventory item[0] run function keepinventory:loot_once