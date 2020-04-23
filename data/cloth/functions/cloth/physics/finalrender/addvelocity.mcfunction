
scoreboard players operation @s xvelocity *= 100 constant
scoreboard players operation @s yvelocity *= 100 constant
scoreboard players operation @s zvelocity *= 100 constant


scoreboard players operation @s xvelocity /= dampening constant
scoreboard players operation @s yvelocity /= dampening constant
scoreboard players operation @s zvelocity /= dampening constant

scoreboard players remove @s yvelocity 2

execute if score @s xvelocity matches ..-1 if block ~-0.5 ~ ~ air run scoreboard players operation @s x += @s xvelocity
execute if score @s xvelocity matches 1.. if block ~0.5 ~ ~ air run scoreboard players operation @s x += @s xvelocity



execute if score @s yvelocity matches ..-1 if block ~ ~-0.5 ~ air run scoreboard players operation @s y += @s yvelocity
execute if score @s yvelocity matches 1.. if block ~ ~0.5 ~ air run scoreboard players operation @s y += @s yvelocity


execute if score @s zvelocity matches ..-1 if block ~ ~ ~-0.5 air run scoreboard players operation @s z += @s zvelocity
execute if score @s zvelocity matches 1.. if block ~ ~ ~0.5 air run scoreboard players operation @s z += @s zvelocity
