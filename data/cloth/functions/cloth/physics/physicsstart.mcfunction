execute if score value neighbouramount matches 16.. run function cloth:cloth/physics/springforce/springforce4
execute if score value neighbouramount matches 8.. run function cloth:cloth/physics/springforce/springforce3
execute if score value neighbouramount matches 4.. run function cloth:cloth/physics/springforce/springforce2
execute if score value neighbouramount matches 2.. run function cloth:cloth/physics/springforce/springforce1
#say physicsstart
execute as @e[type=area_effect_cloud,tag=neighbour] run function cloth:cloth/physics/neighbour/neighbour