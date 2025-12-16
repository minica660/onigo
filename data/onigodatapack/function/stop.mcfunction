title @a title "停止"
title @a actionbar "一時停止中・・・"
scoreboard players set メイン main 0


#gamemode
gamemode spectator @a[team=demon]
gamemode spectator @a[team=runner]

#エフェクト
effect clear @a saturation
effect clear @a speed
effect clear @a resistance

#timer_bossbar
bossbar set my:my_bossbar color green


#inventory replace clear
clear @a red_stained_glass_pane

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
