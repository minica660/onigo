#前回のチェスト等を削除
    #チェスト破壊
        execute as @e[type=armor_stand,tag=chest_marker] at @s run setblock ~ ~ ~ air

    #マーカー用防具立てkill
        execute as @e[type=armor_stand,tag=chest_marker] at @s run kill @s

    #slime_kill
        kill @e[type=slime]



#チェスト、スライム設置ミッション準備関連
    #マーカースライム立て召喚
        execute at @e[type=interaction,tag=chest_marker_spawnpoint] run summon minecraft:slime ~ ~ ~ {Size:0,NoAI:1b,Invulnerable:1b,Tags:["chest_marker"]}
        execute at @e[type=interaction,tag=chest_marker_spawnpoint] run summon minecraft:slime ~ ~ ~ {Size:0,NoAI:1b,Invulnerable:1b,Tags:["chest_marker"]}
        execute at @e[type=interaction,tag=chest_marker_spawnpoint] run summon minecraft:slime ~ ~ ~ {Size:0,NoAI:1b,Invulnerable:1b,Tags:["chest_marker"]}
        execute at @e[type=interaction,tag=chest_marker_spawnpoint] run summon minecraft:slime ~ ~ ~ {Size:0,NoAI:1b,Invulnerable:1b,Tags:["chest_marker"]}
        execute at @e[type=interaction,tag=chest_marker_spawnpoint] run summon minecraft:slime ~ ~ ~ {Size:0,NoAI:1b,Invulnerable:1b,Tags:["chest_marker"]}
        execute at @e[type=interaction,tag=chest_marker_spawnpoint] run summon minecraft:slime ~ ~ ~ {Size:0,NoAI:1b,Invulnerable:1b,Tags:["chest_marker"]}

    #アーマースタンドランダムtp
        spreadplayers 161 -20 0 150 false @e[type=slime,tag=chest_marker]
    #マーカー防具立ての位置にチェスト＋スライム設置（サイズ変更）   
        #チェスト
            execute as @e[type=slime,tag=chest_marker] at @s run setblock ~ ~ ~ chest{LootTable:"onigodatapack:chest/unjailed_runner"}
            #/setblock <x> <y> <z> minecraft:chest{LootTable:"<ルートテーブルID>"} replace



#tellraw,スコア等
    tellraw @a[team=runner] {"text":"[","color":"white","extra":[{"text":"お知らせ","color":"aqua","bold":true},{"text":"]","color":"white"},{"text":"ミッション発動!?","color":"red"},{"text":"\n 残り時間9分までに指定されるアイテムを集めることで捕まったチーム全員を助けることができる　\n","color":"white"},{"text":"必要アイテム：ネザースター,残響の欠片 をそれぞれ１種類ずつ手に入れる","color":"white"},{"text":"\nその状態で牢屋にあるボタンを押すことで味方を解放可能！","color":"gold"}]}
    tellraw @a[team=demon] "逃げ側にはミッションが発動された"


    #ボタン設置
        setblock 228 32 -14 oak_button[face=floor]
        setblock 122 -16 -170 oak_button[face=floor]

    #scoreboard（スライム発光、透明化用）
        scoreboard players set _mission_2_ mission_2 1
