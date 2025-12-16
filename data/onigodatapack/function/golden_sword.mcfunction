#防御
    tag @a remove golden_sword_resistation
    execute at @s run tag @s add golden_sword_resistation
#防具
    execute at @s run summon armor_stand ~ ~2 ~ {Tags:[golden_sword],Invisible:1b}
    execute at @s run tp @n[type=armor_stand,tag=golden_sword] ~ ~ ~ ~ ~
        scoreboard players set @n[type=armor_stand,tag=golden_sword] golden_sword_duration 15
#sound
    execute at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 3 2
    execute at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 3 0.1
    execute at @s run playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ 10 0.1 1


