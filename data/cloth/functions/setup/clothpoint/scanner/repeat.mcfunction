function cloth:setup/clothpoint/scanner/blocktoscore
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:[cloth,clothpoint,setup]}
execute as @e[type=area_effect_cloud,tag=setup,tag=clothpoint,limit=1,sort=nearest,distance=..1] run function cloth:setup/clothpoint/scanner/clothpoint


execute if block ~1 ~-1 ~ air positioned 0.0 ~ ~1 run function cloth:setup/clothpoint/scanner/nextcolumn
execute unless block ~1 ~-1 ~ air positioned ~1 ~ ~ run function cloth:setup/clothpoint/scanner/nextcell