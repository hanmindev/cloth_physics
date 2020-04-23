kill @e[type=area_effect_cloud,tag=cloth]
summon minecraft:area_effect_cloud 0.0 73.0 0.0 {Duration:1,Tags:[cloth,setup,scanner]}
scoreboard players set max index_x 0
scoreboard players set max index_z 0
execute as @e[type=area_effect_cloud,tag=setup,tag=scanner] at @s run function cloth:setup/clothpoint/scanner/repeat
scoreboard players operation max index_x > @e[type=area_effect_cloud,tag=clothpoint] index_x
scoreboard players remove max index_z 1

function cloth:setup/render/renderstart