
execute if entity @s[scores={index_x_temp=0,index_z_temp=0}] run function cloth:cloth/part/neighbours/n0
execute if entity @s[scores={index_x_temp=1,index_z_temp=-1}] run function cloth:cloth/part/neighbours/n1
execute if entity @s[scores={index_x_temp=1,index_z_temp=1}] run function cloth:cloth/part/neighbours/n2
execute if entity @s[scores={index_x_temp=0,index_z_temp=1}] run function cloth:cloth/part/neighbours/n3
execute if entity @s[scores={index_x_temp=-1,index_z_temp=0}] run function cloth:cloth/part/neighbours/n4
