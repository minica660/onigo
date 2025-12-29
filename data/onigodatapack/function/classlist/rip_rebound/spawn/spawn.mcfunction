#スポーン地点が設定されていなかった場合
    tp @s 10 -30 1
#スポーン地点が設定されていた場合はTPされる
    execute as @e[type=interaction] at @s on target run tp @s ~ ~ ~
    execute as @e[type=interaction] at @s on target run kill @n[type=interaction,tag=rip_rebound_spawn]
#墓削除
   execute at @s run kill @e[type=minecraft:block_display, distance=..2]
   execute at @s run kill @e[type=minecraft:item_display, distance=..2]
