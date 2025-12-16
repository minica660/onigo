#タイマー秒数（現在1200秒）
    scoreboard players set 残り時間 game_main 1200

    #管理部屋コマブロにレッドストーン設置
        setblock 248 21 -18 redstone_block
            #タイムアップかどうか
                setblock 246 21 -18 redstone_block
            #鬼スタートコマブロ
                setblock 244 21 -18 redstone_block
            #ミッション1（発光）
                setblock 249 26 -10 redstone_block

            #ミッション（解放）
                

            #逃げ側再配布
                setblock 240 21 -18 redstone_block
          
#スコア（主）
    scoreboard players set メイン main 1
    scoreboard players set _check_runner_jailed_ check_runner_jailed 0

    

#title start
    tellraw @a {"text":"[お知らせ] ","color":"dark_aqua","bold":true,"extra":[{"text":"60秒後にゲームが","color":"white","italic":true},{"text":"開始しされます","color":"yellow","bold":true}]}
        #teamごと
            tellraw @a[team=runner] "逃げ切ろう！"

#ゲームモード
    gamemode adventure @a[team=demon]
    gamemode adventure @a[team=runner]

effect give @a[team=runner] speed 50 4
effect give @a[team=demon] resistance infinite 2 true


#fill
    fill 4 -28 2 4 -30 -4 black_stained_glass




#tp
    #runner
        execute at @a[team=runner] run tp @e[type=interaction,tag=runner_spawnpoint,limit=1]
    #demon
        execute at @a[team=demon] run tp @e[type=interaction,tag=demon_spawnpoint,limit=1]




#game_mainスコアボード
    function onigodatapack:team_count



#ゲームルール
    gamerule fallDamage false
    gamerule doImmediateRespawn true

#tag clear
    tag @a remove jailed_runner

#tag
    tag @a[team=demon] remove class_2
    tag @a[team=demon] remove class_3
        tag @a[team=demon] add class_1



#item clear
    clear @a[team=demon]
    clear @a[team=runner]



#advancement
    #進捗すべて削除
        advancement revoke @a everything

    advancement grant @a[team=runner] only onigodatapack:onigo
    advancement grant @a[team=demon] only onigodatapack:onigo

#class確定
    execute as @a[team=runner,tag=!class_2,tag=!class_3,tag=!class_4,tag=!class_5] at @s run tag @s add class_1


#function
    function onigodatapack:item
