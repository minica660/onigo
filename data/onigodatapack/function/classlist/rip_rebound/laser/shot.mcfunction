particle white_smoke ~ ~ ~ 0 0 0 0 1

execute as @e[type=!player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function onigodatapack:classlist/rip_rebound/laser/damage

execute positioned ^ ^ ^0.5 if block ~ ~ ~ air run function onigodatapack:classlist/rip_rebound/laser/shot
