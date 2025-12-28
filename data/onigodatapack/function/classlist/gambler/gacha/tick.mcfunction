#常時実行ファイル
    execute as @a if score @s gambler_gacha_item_check matches 1.. at @s store result score @s gambler_gacha_random run random value 1..8
        execute as @a if score @s gambler_gacha_item_check matches 1.. at @s run scoreboard players set @s gambler_gacha_item_check 0






#gacha
    #1:鬼に鈍足4と発光を3秒付与
        execute as @a if score @s gambler_gacha_random matches 1 at @s run title @s title "鬼に鈍足4と発光を3秒付与!"
        execute as @a if score @s gambler_gacha_random matches 1 at @s run tellraw @a "ギャンブラーがガチャを回したことにより鬼に鈍足4と発光が3秒間付与されました"
        execute as @a if score @s gambler_gacha_random matches 1 at @s run effect give @a[team=demon] slowness 3 3 false
        execute as @a if score @s gambler_gacha_random matches 1 at @s run effect give @a[team=demon] glowing 3 0 true
            execute as @a if score @s gambler_gacha_random matches 1 at @s run scoreboard players set @s gambler_gacha_random 0

    #2:残り時間を10秒短縮
        execute as @a if score @s gambler_gacha_random matches 2 at @s run title @s title "残り時間を10秒短縮"
        execute as @a if score @s gambler_gacha_random matches 2 at @s run tellraw @a "ギャンブラーがガチャを回したことによって残り時間を10秒短縮されました"
        execute as @a if score @s gambler_gacha_random matches 2 at @s run scoreboard players remove 残り時間 game_main 10
            execute as @a if score @s gambler_gacha_random matches 2 at @s run scoreboard players set @s gambler_gacha_random 0
    
    #3:残り時間を15秒延長
        execute as @a if score @s gambler_gacha_random matches 3 at @s run title @s title "残り時間を15秒延長"
        execute as @a if score @s gambler_gacha_random matches 3 at @s run tellraw @a "ギャンブラーがガチャを回したことによって残り時間が15秒延長されました"
        execute as @a if score @s gambler_gacha_random matches 3 at @s run playsound minecraft:entity.wither_skeleton.death master @a ~ ~ ~ 1 0.5 0.1
        execute as @a if score @s gambler_gacha_random matches 3 at @s run scoreboard players add 残り時間 game_main 10
            execute as @a if score @s gambler_gacha_random matches 3 at @s run scoreboard players set @s gambler_gacha_random 0

    #4:自傷1ダメージ
        execute as @a if score @s gambler_gacha_random matches 4 at @s run title @s title "自傷1ダメージ"
        execute as @a if score @s gambler_gacha_random matches 4 at @s run damage @s 1 arrow
        execute as @a if score @s gambler_gacha_random matches 4 at @s run effect give @s darkness 3 0 true
            execute as @a if score @s gambler_gacha_random matches 4 at @s run scoreboard players set @s gambler_gacha_random 0
    
    #5:自分自身に耐性5を3秒付与
        execute as @a if score @s gambler_gacha_random matches 5 at @s run title @s title "耐性5を3秒付与"
        execute as @a if score @s gambler_gacha_random matches 5 at @s run effect give @s resistance 3 4 true
            execute as @a if score @s gambler_gacha_random matches 5 at @s run scoreboard players set @s gambler_gacha_random 0
    
    #6:移動速度上昇2を10秒付与
        execute as @a if score @s gambler_gacha_random matches 6 at @s run title @s title "移動速度上昇2を10秒付与"
        execute as @a if score @s gambler_gacha_random matches 6 at @s run effect give @s speed 10 1 true
            execute as @a if score @s gambler_gacha_random matches 6 at @s run scoreboard players set @s gambler_gacha_random 0
    
    #7:全員に発光を5秒付与
        execute as @a if score @s gambler_gacha_random matches 7 at @s run title @s title "全員に発光を5秒付与"
        execute as @a if score @s gambler_gacha_random matches 7 at @s run tellraw @a "ギャンブラーがガチャを回したことによって全員に発光が付与されました"
        execute as @a if score @s gambler_gacha_random matches 7 at @s run effect give @a glowing 5 0 true
            execute as @a if score @s gambler_gacha_random matches 7 at @s run scoreboard players set @s gambler_gacha_random 0
    
    #8:鬼に鈍足2を10秒付与
        execute as @a if score @s gambler_gacha_random matches 8 at @s run title @s title "鬼に鈍足2を10秒付与"
        execute as @a if score @s gambler_gacha_random matches 8 at @s run tellraw @a[team=demon] "ギャンブラーがガチャを回したことによって移動速度が低下しました"
        execute as @a if score @s gambler_gacha_random matches 8 at @s run tellraw @a[team=runner] "ギャンブラーがガチャを回したことによって鬼の移動速度が低下しました"
        execute as @a if score @s gambler_gacha_random matches 8 at @s run effect give @a[team=demon] slowness 10 1 true
            execute as @a if score @s gambler_gacha_random matches 8 at @s run scoreboard players set @s gambler_gacha_random 0
    
    #9:味方一人に鈍足1を付与
        execute as @a if score @s gambler_gacha_random matches 9 at @s run title @s title "味方一人に鈍足1を付与"
            execute as @a if score @s gambler_gacha_random matches 9 at @s run tag @r[team=runner] add gambler_gacha_slowness
            execute as @a if score @s gambler_gacha_random matches 9 at @s run tellraw @a[tag=gambler_gacha_slowness] "ギャンブラーがガチャを回したことによって移動速度が低下しました"
            execute as @a if score @s gambler_gacha_random matches 9 at @s run effect give @a[tag=gambler_gacha_slowness] slowness 4 0 true
            execute as @a if score @s gambler_gacha_random matches 9 at @s run tag @a remove gambler_gacha_slowness
                execute as @a if score @s gambler_gacha_random matches 9 at @s run scoreboard players set @s gambler_gacha_random 0
