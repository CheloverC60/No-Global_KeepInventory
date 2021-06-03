#by Chelover_C60
data modify storage keepinventory:inventory item prepend from entity @s Inventory[]
data remove storage keepinventory:inventory item[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
execute if data storage keepinventory:inventory item[0] run function keepinventory:loot_once
clear @s