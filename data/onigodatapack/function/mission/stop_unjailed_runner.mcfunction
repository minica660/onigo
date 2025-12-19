#チェスト破壊
    execute as @e[type=slime,tag=chest_marker] at @s run setblock ~ ~ ~ air


#slime_kill
    execute as @e[type=slime,tag=chest_marker] at @s run kill @e[type=slime]

#scoreboard
    scoreboard players set _mission_2_ mission_2 0

#ボタン破壊
    setblock 228 32 -14 air
    setblock 122 -16 -170 air


#item_clear
    clear @a nether_star
    clear @a echo_shard
    clear @a amethyst_shard