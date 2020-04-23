#say §4masterloop
#execute as @a run function cloth:follow
function cloth:cloth/clothpart
execute at @e[type=area_effect_cloud,tag=clothpart] run summon falling_block ~ ~ ~ {NoGravity:true,BlockState:{Name:"diamond_block"}}