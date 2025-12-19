#マーカー位置のブロック破壊
    execute as @e[type=armor_stand,tag=small_marker] at @s run setblock ~ ~1 ~ minecraft:air
    execute as @e[type=armor_stand,tag=small_marker] at @s run setblock ~ ~ ~ minecraft:air

#マーカーkill
    kill @e[type=armor_stand,tag=small_marker]

