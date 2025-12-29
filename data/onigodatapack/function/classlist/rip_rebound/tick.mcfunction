#常時実行ファイル
    #item
        execute as @a if score @s rip_rebound_item_spawn matches 1.. at @s run function onigodatapack:classlist/rip_rebound/spawn/set_spawn
            execute as @a if score @s rip_rebound_item_spawn matches 1.. at @s run scoreboard players set @s rip_rebound_item_spawn 0
    #復活
        execute as @a if score @s rip_rebound_item_anvil matches 1.. at @s run function onigodatapack:classlist/rip_rebound/spawn/spawn
            execute as @a if score @s rip_rebound_item_anvil matches 1.. at @s[tag=jailed_runner] run scoreboard players add 逃げ側死亡数 death_runner 1
            execute as @a if score @s rip_rebound_item_anvil matches 1.. at @s run tag @s remove jailed_runner
            execute as @a if score @s rip_rebound_item_anvil matches 1.. at @s run effect give @s instant_health 1 200
            execute as @a if score @s rip_rebound_item_anvil matches 1.. at @s run effect give @s wither 4 5 true

                execute as @a if score @s rip_rebound_item_anvil matches 1 at @s run scoreboard players set @s rip_rebound_item_anvil 0

