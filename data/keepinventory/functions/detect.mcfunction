function #keepinventory:before_loot
execute if score mode keep_info matches 0 if entity @s[tag=!keep] run function keepinventory:loot
execute if score mode keep_info matches 1 if entity @s[tag=loot] run function keepinventory:loot
function #keepinventory:after_loot