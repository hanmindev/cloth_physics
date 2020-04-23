#this gets the relative positions

scoreboard players operation pn4 x -= pn0 x
scoreboard players operation pn4 y -= pn0 y
scoreboard players operation pn4 z -= pn0 z


scoreboard players operation pps4 x = pn4 x
scoreboard players operation pps4 y = pn4 y
scoreboard players operation pps4 z = pn4 z

#store the squared version of pps1y
scoreboard players operation pps4 x *= pps4 x
scoreboard players operation pps4 y *= pps4 y
scoreboard players operation pps4 z *= pps4 z
scoreboard players operation t1 calculations = pps4 x
scoreboard players operation t1 calculations += pps4 y
scoreboard players operation t1 calculations += pps4 z
scoreboard players operation t1 calculations /= 100 constant

#sqrt for distance
function cloth:cloth/physics/sqrt/ctrl

scoreboard players operation dist calculations = result calculations
#defaultlength/distance to see how much to scale it by. times 100 and divide by mass to acceleration constant in the hundreds.
scoreboard players operation accel calculations = result calculations
scoreboard players operation accel calculations -= defaultlength constant
scoreboard players operation accel calculations *= spring constant
scoreboard players operation accel calculations /= mass constant





scoreboard players operation pn4 x *= accel calculations
scoreboard players operation pn4 y *= accel calculations
scoreboard players operation pn4 z *= accel calculations


scoreboard players operation pn4 x /= 100 constant
scoreboard players operation pn4 y /= 100 constant
scoreboard players operation pn4 z /= 100 constant

#acceleration
scoreboard players remove value neighbouramount 16