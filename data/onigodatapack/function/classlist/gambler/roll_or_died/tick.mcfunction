#アイテム検知(逃げ側残り1人の場合)
    execute if score 逃げ側死亡数 death_runner matches 1 as @a if score @s gambler_roll_or_died_item matches 1.. at @s run function onigodatapack:classlist/gambler/roll_or_died/freeze
        #残り一人じゃなかった場合もう一度アイテムを付与
            execute unless score 逃げ側死亡数 death_runner matches 1 as @a if score @s gambler_roll_or_died_item matches 1.. at @s run function onigodatapack:classlist/gambler/roll_or_died/item
                #回数検知(回数に応じて確率を変化)
                    execute as @a if score @s gambler_roll_or_died_item matches 1.. at @s run scoreboard players add gambler_roll_or_died_count gambler_roll_or_died_roulette 1
                #tag付け
                    execute as @a if score @s gambler_roll_or_died_item matches 1.. at @s run tag @s add roll_or_died_kill
        #時間ストップ
            execute as @a if score @s gambler_roll_or_died_item matches 1.. at @s run scoreboard players set メイン main 0
            #スコアリセット
                execute as @a if score @s gambler_roll_or_died_item matches 1.. at @s run scoreboard players set @s gambler_roll_or_died_item 0



#フリーズ(tpによって)
    execute if score プレイヤーの動きを止める gambler_roll_or_died_freeze matches 1.. as @a at @s run tp @s @n[type=marker,tag=freeze_player]


#ルーレット制御
    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 1..200 run scoreboard players remove gambler_roll_or_died_roulette gambler_roll_or_died_roulette 1
    #ルーレット内
        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 150 run title @a title {"text":"鬼にスタン5秒","color":"blue","bold":true}
            execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 150 run title @a subtitle [{"text":"§k","color":"blue","obfuscated":true},{"text":" 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false}]
                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 150 run playsound ui.button.click master @a ~ ~ ~ 2 1
        
        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 110 run title @a title [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 120 run playsound ui.button.click master @a ~ ~ ~ 2 1

                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 110 run title @a title {"text":"鬼にスタン5秒","color":"blue","bold":true}
            execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 110 run title @a subtitle [{"text":"§k","color":"blue","obfuscated":true},{"text":" 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false}]
                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 110 run playsound ui.button.click master @a ~ ~ ~ 2 1
        
        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 100 run title @a title [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 100 run playsound ui.button.click master @a ~ ~ ~ 2 1


            #結果
                #回数1回目
                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 95 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 1 store result score gambler_roll_or_died_result gambler_roll_or_died_roulette run random value 1..2
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 1 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run tellraw @a [{"text":"§k","color":"blue","obfuscated":true},{"text":"鬼にスタン5 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false},{"text":"§k","color":"blue","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 1 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 2 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                            #処理
                                #あたり
                                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 1 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run effect give @a[team=demon] slowness 7 5 true
                                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 1 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run effect give @a[team=runner] speed 3 7 true
                                #ハズレ
                                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 1 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 2 run kill @a[team=runner,tag=roll_or_died_kill,limit=1]

                
                #回数2回目
                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 95 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 store result score gambler_roll_or_died_result gambler_roll_or_died_roulette run random value 1..10
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run tellraw @a [{"text":"§k","color":"blue","obfuscated":true},{"text":"鬼にスタン5 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false},{"text":"§k","color":"blue","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 2 run tellraw @a [{"text":"§k","color":"blue","obfuscated":true},{"text":"鬼にスタン5 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false},{"text":"§k","color":"blue","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 3 run tellraw @a [{"text":"§k","color":"blue","obfuscated":true},{"text":"鬼にスタン5 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false},{"text":"§k","color":"blue","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 4 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 5 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 6 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 7 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 8 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 9 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 10 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        #処理
                            #あたり
                                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1..3 run effect give @a[team=demon] slowness 7 5 true
                                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1..3 run effect give @a[team=runner] speed 3 7 true
                            #ハズレ
                                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 2 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 4..10 run kill @a[team=runner,tag=roll_or_died_kill,limit=1]
                
                #回数3回目
                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 95 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 store result score gambler_roll_or_died_result gambler_roll_or_died_roulette run random value 1..10
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run tellraw @a [{"text":"§k","color":"blue","obfuscated":true},{"text":"鬼にスタン5 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false},{"text":"§k","color":"blue","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 2 run tellraw @a [{"text":"§k","color":"blue","obfuscated":true},{"text":"鬼にスタン5 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false},{"text":"§k","color":"blue","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 3 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 4 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 5 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 6 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 7 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 8 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 9 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 10 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        #処理
                            #あたり
                                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1..2 run effect give @a[team=demon] slowness 7 5 true
                                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1..2 run effect give @a[team=runner] speed 3 7 true
                            #ハズレ
                                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 3 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 3..10 run kill @a[team=runner,tag=roll_or_died_kill,limit=1]
                

                #回数4回目
                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 95 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 store result score gambler_roll_or_died_result gambler_roll_or_died_roulette run random value 1..10
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run tellraw @a [{"text":"§k","color":"blue","obfuscated":true},{"text":"鬼にスタン5 自分自身に移動速度上昇4が7秒","color":"blue","obfuscated":false},{"text":"§k","color":"blue","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 2 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 3 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 4 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 5 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 6 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 7 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 8 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 9 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 10 run tellraw @a [{"text":"§k","color":"red","obfuscated":true},{"text":"死亡","color":"red","obfuscated":false},{"text":"§k","color":"red","obfuscated":true}]
                        execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 run advancement grant @a only onigodatapack:roll_or_died
                        #回数カウントリセット
                            execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 90 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 run scoreboard players set gambler_roll_or_died_count gambler_roll_or_died_roulette 0
                            #処理
                                #あたり
                                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run effect give @a[team=demon] slowness 10 5 true
                                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 1 run effect give @a[team=runner] speed 10 3 true
                                #ハズレ
                                    execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 10 if score gambler_roll_or_died_count gambler_roll_or_died_roulette matches 4 if score gambler_roll_or_died_result gambler_roll_or_died_roulette matches 2..10 run kill @a[team=runner,tag=roll_or_died_kill,limit=1]
                



            #処理
                execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches 0 run function onigodatapack:classlist/gambler/roll_or_died/unfreeze
        #制御
            execute if score gambler_roll_or_died_roulette gambler_roll_or_died_roulette matches ..-1 run scoreboard players set gambler_roll_or_died_roulette gambler_roll_or_died_roulette -1

            
                

