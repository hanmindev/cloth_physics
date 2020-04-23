#execute store result score @e[type=minecraft:area_effect_cloud,tag=clothpart,limit=1,sort=nearest] x run data get entity @s Pos[0] 100
#execute store result score @e[type=minecraft:area_effect_cloud,tag=clothpart,limit=1,sort=nearest] y run data get entity @s Pos[1] 100

#scoreboard players remove @e[type=minecraft:area_effect_cloud,tag=clothpart,limit=1,sort=nearest] y 7800


#execute store result score @e[type=minecraft:area_effect_cloud,tag=clothpart,limit=1,sort=nearest] z run data get entity @s Pos[2] 100