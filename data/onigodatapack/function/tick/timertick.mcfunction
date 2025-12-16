#タイマー減少関連
    execute if score メイン main matches 1 run scoreboard players add _sub_countdown_ sub_countdown 1
    execute if score _sub_countdown_ sub_countdown matches 20.. run scoreboard players remove 残り時間 game_main 1
    execute if score _sub_countdown_ sub_countdown matches 20.. run scoreboard players set _sub_countdown_ sub_countdown 0


#ゲーム終了（逃げ側の勝利）
    execute if score 残り時間 game_main matches 0 run function onigodatapack:stop/runner_win
    execute if score 残り時間 game_main matches ..0 run scoreboard players set 残り時間 game_main -2


#ミッション2発動
    execute if score _check_runner_jailed_ check_runner_jailed matches 1 if score 残り時間 game_main matches 700 if score _sub_countdown_ sub_countdown matches 1 run function onigodatapack:mission/unjailed_runner
    #ミッション2失敗
        execute if score 残り時間 game_main matches 540 if score _sub_countdown_ sub_countdown matches 1 if score _mission_2_ mission_2 matches 1 run say 解放ミッション失敗！
        execute if score 残り時間 game_main matches 540 if score _sub_countdown_ sub_countdown matches 1 if score _mission_2_ mission_2 matches 1 run function onigodatapack:mission/stop_unjailed_runner




#逃げ側スポーン用
    execute as @a if score @s runner_spawn_sub matches 1 run scoreboard players set @s runner_spawn 100
        #常時スコア減らす
            scoreboard players remove @a runner_spawn 1

    #牢屋tp
        execute as @a if score @s runner_spawn matches 0 run gamemode adventure @s
        execute as @a if score @s runner_spawn matches 0 run execute at @s run tp @e[type=interaction,tag=jail_spawnpoint,limit=1]

    #制御
        execute as @a if score @s runner_spawn_sub matches 1 run scoreboard players set @s runner_spawn_sub 0
        execute as @a if score @s runner_spawn matches ..-1 run scoreboard players set @s runner_spawn -1

        #捕まった人数計測
            scoreboard players set 捕まった人数 game_main 0
            execute as @a[team=runner,tag=jailed_runner] run scoreboard players add 捕まった人数 game_main 1



#game_main scoreboard
    #残り時間のgame_mainスコアボードに表示
        #execute store result score 残り時間 game_main run scoreboard players get _countdown1_ countdown1
        