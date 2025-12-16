#particle
    execute at @e[type=armor_stand,tag=golden_sword] run particle explosion ~ ~ ~ ^ ^ ^10000000 0.00000001 0 normal @a
#tp
     execute as @e[type=armor_stand,tag=golden_sword] at @s run tp @s ^ ^ ^1
 #armorstand_kill
    scoreboard players remove @s golden_sword_duration 1
     execute as @a if score @s golden_sword_duration matches 20 run kill @e[type=armor_stand,tag=golden_sword]
     kill @s[scores={golden_sword_duration=0}]

#damage 
    damage @n[distance=..4] 2
        execute as @e[type=armor_stand,tag=golden_sword] at @s run effect give @e[distance=..2,type=!armor_stand] water_breathing 7 0
        
        #防御
            execute as @a[tag=golden_sword_resistation] at @s run effect clear @s water_breathing
    execute as @e if data entity @s {active_effects:[{id:"minecraft:water_breathing"}]} run effect give @s slowness 7 250 true
    execute as @e if data entity @s {active_effects:[{id:"minecraft:water_breathing"}]} run effect give @s glowing 7 10
    
