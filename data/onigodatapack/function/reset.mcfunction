#scoreboard 21個
    scoreboard objectives remove main
    scoreboard objectives remove sub_countdown
    scoreboard objectives remove game_deth_count
    scoreboard objectives remove game_kill_count
        scoreboard objectives remove click_heart_of_the_sea
        scoreboard objectives remove click_compass
        scoreboard objectives remove click_rabbit_foot
        scoreboard objectives remove click_conduit
        scoreboard objectives remove click_charcoal
        scoreboard objectives remove click_quartz
        scoreboard objectives remove click_blaze_powder
            scoreboard objectives remove death_count
            scoreboard objectives remove player_kill_count
            scoreboard objectives remove lightning
            scoreboard objectives remove lightning_sub
            scoreboard objectives remove runner_spawn
            scoreboard objectives remove runner_spawn_sub
            scoreboard objectives remove check_runner_jailed
            scoreboard objectives remove game_main
                scoreboard objectives remove death_runner
                    scoreboard objectives remove mission
                    scoreboard objectives remove mission_2
                    




team remove demon
team remove runner


effect clear @a[team=demon]
effect clear @a[team=runner]

title @a title "リセット"

#墓削除
    kill @e[type=minecraft:block_display, distance=..2]
    kill @e[type=minecraft:item_display, distance=..2]



#管理部屋コマブロにレッドストーン設置
        setblock 248 21 -18 stone
            #タイムアップかどうか
                setblock 246 21 -18 stone
            #鬼スタートコマブロ
                setblock 244 21 -18 stone
            #ミッション1
                setblock 249 26 -10 stone
            #逃げ側アイテム再配布
                setblock 240 21 -18 stone


#advancement
    #進捗すべて削除
        advancement revoke @a everything


#interactionエンティティ削除
    kill @e[type=interaction,tag=runner_spawnpoint]
    kill @e[type=interaction,tag=demon_spawnpoint]
    kill @e[type=interaction,tag=jail_spawnpoint]
    kill @e[type=interaction,tag=rip_rebound_spawn]
    