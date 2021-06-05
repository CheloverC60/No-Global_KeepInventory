#by Chelover_C60
tag @e[type=item,distance=..1] add keepinventory_temp
data modify storage keepinventory:inventory item prepend from entity @s Inventory[]
data remove storage keepinventory:inventory item[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
execute if data storage keepinventory:inventory item[0] run function keepinventory:loot_once
tag @e[type=item,distance=..1] remove keepinventory_temp
clear @s