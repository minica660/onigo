scoreboard players set _lightning_ lightning 0
scoreboard players set _lightning_sub_ lightning_sub 1





#tag:lightning_armorstand付きの防具立て召喚
    execute as @a run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["lightning_armorstand"]}


    #防具立てを中心にパーティクルフラッシュを実行
        #tickファイルでも記述の通り一時パーティクル変更(flash使えず1.21.9)
        execute as @e[type=armor_stand,tag=lightning_armorstand] at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 1 1 force