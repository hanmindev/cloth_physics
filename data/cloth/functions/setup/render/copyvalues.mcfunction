scoreboard players operation src1 calculations = @s x
scoreboard players operation src2 calculations = @s y
scoreboard players operation src3 calculations = @s z
scoreboard players operation src4 calculations = @s index_x
scoreboard players operation src5 calculations = @s index_z
scoreboard players operation src6 calculations = @s blockid
summon minecraft:area_effect_cloud ~ 135 ~ {Duration:2147483647,Tags:[cloth,setup,clothpart]}
execute as @e[type=area_effect_cloud,tag=setup,tag=clothpart,limit=1] run function cloth:setup/render/pastevalues