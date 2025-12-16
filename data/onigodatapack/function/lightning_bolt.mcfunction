#雷召喚
    execute as @e[type=armor_stand,tag=lightning_armorstand] at @s run effect give @a[team=runner,distance=..4] resistance 3 4 true
    execute as @e[type=armor_stand,tag=lightning_armorstand] at @s run summon lightning_bolt
    execute as @e[type=armor_stand,tag=lightning_armorstand] at @s run effect give @a[team=demon,distance=..3] slowness 7 100 false
    execute as @e[type=armor_stand,tag=lightning_armorstand] at @s run effect give @a[team=demon,distance=..3] weakness 7 100 true
            #effect与える＆検知
                    execute as @e[type=armor_stand,tag=lightning_armorstand] at @s run effect give @a[team=demon,distance=..4] unluck 7 0 true
                        execute if data entity @s {active_effects:[{id:"minecraft:unluck"}]} run particle enchant ~ ~ ~ 0.5 0.7 0.5 1 14 force



#アーマースタンkill
    execute as @e[type=armor_stand,tag=lightning_armorstand] at @s run kill @s