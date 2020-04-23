#tellraw @a ["",{"text":"current index_x\n"},{"score":{"name":"current","objective":"index_x"}},{"text":"\ncurrent index_z\n"},{"score":{"name":"current","objective":"index_z"}}]

scoreboard players reset pn0
scoreboard players reset pn1
scoreboard players reset pn2
scoreboard players reset pn3
scoreboard players reset pn4
scoreboard players set value neighbouramount 0
execute as @e[type=area_effect_cloud,tag=clothpart,scores={index_x_temp=-1..1,index_z_temp=-1..1}] run function cloth:cloth/part/neighbours/neighbourssetup


function cloth:cloth/physics/physicsstart








execute if score rep calculations matches 2 run scoreboard players set rep calculations 0

execute if score rep calculations matches 1 run function cloth:cloth/part/nextcell
execute if score rep calculations matches 1 if score current index_x > max index_x run function cloth:cloth/part/nextline/nextline
execute if score rep calculations matches 1 if score current index_z = max index_z if score current index_x = max index_x run scoreboard players set rep calculations 2
execute if score rep calculations matches 1.. run function cloth:cloth/part/findneighbours