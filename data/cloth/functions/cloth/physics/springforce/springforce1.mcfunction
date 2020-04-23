#this gets the relative positions


#tellraw @a ["",{"text":"current pn0\n"},{"score":{"name":"pn0","objective":"x"}}]
#tellraw @a ["",{"text":"current pn1\n"},{"score":{"name":"pn1","objective":"x"}}]

scoreboard players operation pn1 x -= pn0 x
scoreboard players operation pn1 y -= pn0 y
scoreboard players operation pn1 z -= pn0 z



#tellraw @a ["",{"text":"current distance\n"},{"score":{"name":"pn1","objective":"x"}}]


scoreboard players operation pps1 x = pn1 x
scoreboard players operation pps1 y = pn1 y
scoreboard players operation pps1 z = pn1 z

#store the squared version of pps1y
scoreboard players operation pps1 x *= pps1 x
scoreboard players operation pps1 y *= pps1 y
scoreboard players operation pps1 z *= pps1 z
scoreboard players operation t1 calculations = pps1 x
scoreboard players operation t1 calculations += pps1 y
scoreboard players operation t1 calculations += pps1 z
scoreboard players operation t1 calculations /= 100 constant

#sqrt for distance
function cloth:cloth/physics/sqrt/ctrl

scoreboard players operation dist calculations = result calculations
#defaultlength/distance to see how much to scale it by. times 100 and divide by mass to acceleration constant in the hundreds.
scoreboard players operation accel calculations = result calculations
scoreboard players operation accel calculations -= defaultlengthd constant
scoreboard players operation accel calculations *= spring constant
scoreboard players operation accel calculations /= mass constant





scoreboard players operation pn1 x *= accel calculations
scoreboard players operation pn1 y *= accel calculations
scoreboard players operation pn1 z *= accel calculations


scoreboard players operation pn1 x /= 100 constant
scoreboard players operation pn1 y /= 100 constant
scoreboard players operation pn1 z /= 100 constant

#acceleration
scoreboard players remove value neighbouramount 2