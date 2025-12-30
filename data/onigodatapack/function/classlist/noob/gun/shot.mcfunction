tag @s add no_noob_gun_damage
particle flame ~ ~ ~ 0 0 0 0 1

execute as @e[tag=!no_noob_gun_damage] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run damage @s 4

execute positioned ^ ^ ^1 if block ~ ~ ~ air run function onigodatapack:classlist/noob/gun/shot
