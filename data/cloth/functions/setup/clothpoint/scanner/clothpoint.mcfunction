scoreboard players operation @s blockid = current blockid
scoreboard players operation @s index_x = max index_x
scoreboard players operation @s index_z = max index_z

execute store result score @s x run data get entity @s Pos[0] 100
execute store result score @s y run data get entity @s Pos[1] 100
scoreboard players remove @s y 7200
execute store result score @s z run data get entity @s Pos[2] 100
tag @s remove setup