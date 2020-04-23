#this gets the relative positions


scoreboard players operation pn2 x -= pn0 x
scoreboard players operation pn2 y -= pn0 y
scoreboard players operation pn2 z -= pn0 z




scoreboard players operation pps2 x = pn2 x
scoreboard players operation pps2 y = pn2 y
scoreboard players operation pps2 z = pn2 z

#store the squared version of pps1y
scoreboard players operation pps2 x *= pps2 x
scoreboard players operation pps2 y *= pps2 y
scoreboard players operation pps2 z *= pps2 z
scoreboard players operation t1 calculations = pps2 x
scoreboard players operation t1 calculations += pps2 y
scoreboard players operation t1 calculations += pps2 z
scoreboard players operation t1 calculations /= 100 constant

#sqrt for distance
function cloth:cloth/physics/sqrt/ctrl

scoreboard players operation dist calculations = result calculations
#defaultlength/distance to see how much to scale it by. times 100 and divide by mass to acceleration constant in the hundreds.
scoreboard players operation accel calculations = result calculations
scoreboard players operation accel calculations -= defaultlengthd constant
scoreboard players operation accel calculations *= spring constant
scoreboard players operation accel calculations /= mass constant





scoreboard players operation pn2 x *= accel calculations
scoreboard players operation pn2 y *= accel calculations
scoreboard players operation pn2 z *= accel calculations


scoreboard players operation pn2 x /= 100 constant
scoreboard players operation pn2 y /= 100 constant
scoreboard players operation pn2 z /= 100 constant

#acceleration
scoreboard players remove value neighbouramount 4