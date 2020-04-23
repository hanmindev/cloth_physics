#say n0
scoreboard players add value neighbouramount 1
scoreboard players operation pn0 x = @s x
scoreboard players operation pn0 y = @s y
scoreboard players operation pn0 z = @s z
tag @s add neighbour
tag @s add n0