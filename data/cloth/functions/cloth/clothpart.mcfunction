scoreboard players set current index_x 0
scoreboard players set current index_z 0
execute as @e[type=area_effect_cloud,tag=clothpart] run function cloth:cloth/part/neighbours/setindex
function cloth:cloth/part/cyclethrough