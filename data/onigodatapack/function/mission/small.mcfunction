#前回の削除
    #マーカー位置のブロック破壊
        execute as @e[type=armor_stand,tag=small_marker] at @s run setblock ~ ~1 ~ minecraft:air
        execute as @e[type=armor_stand,tag=small_marker] at @s run setblock ~ ~ ~ minecraft:air

    #マーカーkill
        kill @e[type=armor_stand,tag=small_marker]
    #attribute
        execute as @a[team=runner] at @s run attribute @s minecraft:scale base set 1


#メッセージ
    tellraw @a[team=runner] {"text":"[","color":"white","extra":[{"text":"お知らせ","color":"aqua","bold":true},{"text":"]","color":"white"},{"text":"ミッション発動!?","color":"red"},{"text":"\n","color":"white"},{"text":"残り時間","color":"white"},{"text":"○○秒","color":"gold"},{"text":"以内に","color":"white"},{"text":"マップ内の感圧板を2つ同時に踏め!","color":"red","bold":true},{"text":"\n","color":"white"},{"text":"成功すれば、鬼へのアイテム配布を阻止できるぞ。","color":"white"},{"text":"\n","color":"white"},{"text":"感圧板は全部で","color":"white"},{"text":"4つ","color":"aqua","bold":true},{"text":".","color":"white"},{"text":"\n","color":"white"},{"text":"ヒント:","color":"gold"},{"text":"\n","color":"white"},{"text":"落雷","color":"light_purple"},{"text":"\n","color":"white"},{"text":"定期的に発光する","color":"yellow"}]}
    tellraw @a[team=demon] "逃げ側にはミッションが発動された"

#score
    scoreboard players set _mission_small_small_ mission_small_small 1000

#チェスト、感圧版設置ミッション準備関連
    #マーカー防具立て召喚(４体)
        summon minecraft:armor_stand 1 -26 -0 {Invisible:1b,Marker:1b,Tags:["small_marker"]}
        summon minecraft:armor_stand 1 -26 -0 {Invisible:1b,Marker:1b,Tags:["small_marker"]}
        summon minecraft:armor_stand 1 -26 -0 {Invisible:1b,Marker:1b,Tags:["small_marker"]}
        summon minecraft:armor_stand 1 -26 -0 {Invisible:1b,Marker:1b,Tags:["small_marker"]}

    #アーマースタンドランダムtp
        spreadplayers 161 -20 0 130 false @e[type=armor_stand,tag=small_marker]
        #感圧版設置
            execute as @e[type=armor_stand,tag=small_marker] at @s run setblock ~ ~1 ~ oak_pressure_plate
            execute as @e[type=armor_stand,tag=small_marker] at @s run setblock ~ ~ ~ minecraft:repeating_command_block{Command:"scoreboard players add _check_small_ mission_small 1"}
        #雷 
            execute as @e[type=armor_stand,tag=small_marker] at @s run summon lightning_bolt ~ ~3 ~