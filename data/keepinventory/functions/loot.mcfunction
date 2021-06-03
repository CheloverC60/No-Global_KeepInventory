#by Chelover_C60
summon item ~ ~ ~ {Tags:["keepinventory_mark"],Item:{id:"minecraft:stone",Count:1},PickupDelay:65535,NoGravity:1}
data modify entity @e[type=item,limit=1,sort=nearest,tag=keepinventory_mark,distance=..1] Item.tag.Inventory prepend from entity @s Inventory[]
data remove entity @e[type=item,limit=1,sort=nearest,tag=keepinventory_mark,distance=..1] Item.tag.Inventory[0].tag.Enchantments[{id:"minecraft:vanishing_curse"}]
execute as @e[tag=keepinventory_mark,type=item,limit=1,sort=nearest,distance=..1] if data entity @s Item.tag.Inventory[0] run function keepinventory:loot_once
kill @e[tag=keepinventory_mark,type=item,distance=..1]
clear @s