#this gets the relative positions

scoreboard players operation pn3 x -= pn0 x
scoreboard players operation pn3 y -= pn0 y
scoreboard players operation pn3 z -= pn0 z



scoreboard players operation pps3 x = pn3 x
scoreboard players operation pps3 y = pn3 y
scoreboard players operation pps3 z = pn3 z

#store the squared version of pps1y
scoreboard players operation pps3 x *= pps3 x
scoreboard players operation pps3 y *= pps3 y
scoreboard players operation pps3 z *= pps3 z
scoreboard players operation t1 calculations = pps3 x
scoreboard players operation t1 calculations += pps3 y
scoreboard players operation t1 calculations += pps3 z
scoreboard players operation t1 calculations /= 100 constant

#sqrt for distance
function cloth:cloth/physics/sqrt/ctrl

scoreboard players operation dist calculations = result calculations
#defaultlength/distance to see how much to scale it by. times 100 and divide by mass to acceleration constant in the hundreds.
scoreboard players operation accel calculations = result calculations
scoreboard players operation accel calculations -= defaultlength constant
scoreboard players operation accel calculations *= spring constant
scoreboard players operation accel calculations /= mass constant





scoreboard players operation pn3 x *= accel calculations
scoreboard players operation pn3 y *= accel calculations
scoreboard players operation pn3 z *= accel calculations


scoreboard players operation pn3 x /= 100 constant
scoreboard players operation pn3 y /= 100 constant
scoreboard players operation pn3 z /= 100 constant

#acceleration
scoreboard players remove value neighbouramount 8