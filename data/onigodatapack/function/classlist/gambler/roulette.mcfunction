#常時実行ファイル



#ギャンブラールーレットスコアボード確認
    execute as @a if score @s gambler_roulette_check matches 1 at @s run scoreboard players remove @s gambler_roulette 1



#ルーレット
    execute as @a if score @s gambler_roulette matches 100 at @s run title @s title "HP10"
        execute as @a if score @s gambler_roulette matches 100 at @s run playsound block.note_block.snare master @s ~ ~ ~ 3 1.5
    execute as @a if score @s gambler_roulette matches 80 at @s run title @s title "HP3"
        execute as @a if score @s gambler_roulette matches 80 at @s run playsound block.note_block.snare master @s ~ ~ ~ 3 1.5
    execute as @a if score @s gambler_roulette matches 60 at @s run title @s title "HP37"
        execute as @a if score @s gambler_roulette matches 60 at @s run playsound block.note_block.snare master @s ~ ~ ~ 3 1.5
    execute as @a if score @s gambler_roulette matches 40 at @s run title @s title "HP27"
        execute as @a if score @s gambler_roulette matches 40 at @s run playsound block.note_block.snare master @s ~ ~ ~ 3 1.5
    execute as @a if score @s gambler_roulette matches 20 at @s run title @s title "HP10"
        execute as @a if score @s gambler_roulette matches 20 at @s run playsound block.note_block.snare master @s ~ ~ ~ 3 1.5
    execute as @a if score @s gambler_roulette matches 0 at @s run title @s title ""
        execute as @a if score @s gambler_roulette matches 0 at @s run playsound block.note_block.harp master @s ~ ~ ~ 3 1.5
            execute as @a if score @s gambler_roulette matches 0 at @s run scoreboard players set @s gambler_roulette_check 0
            execute as @a if score @s gambler_roulette matches 0 at @s store result score @s gambler_roulette_item run random value 1..20
    #hp(item)
        #最大体力リセット
            execute as @a if score @s gambler_roulette_item matches 1 at @s run attribute @s max_health base set 20
        #ランダム
            execute as @a if score @s gambler_roulette_item matches 1 at @s run attribute @s max_health base set 21
            execute as @a if score @s gambler_roulette_item matches 2 at @s run attribute @s max_health base set 22
            execute as @a if score @s gambler_roulette_item matches 3 at @s run attribute @s max_health base set 23
            execute as @a if score @s gambler_roulette_item matches 4 at @s run attribute @s max_health base set 24
            execute as @a if score @s gambler_roulette_item matches 5 at @s run attribute @s max_health base set 25
            execute as @a if score @s gambler_roulette_item matches 6 at @s run attribute @s max_health base set 26
            execute as @a if score @s gambler_roulette_item matches 7 at @s run attribute @s max_health base set 27
            execute as @a if score @s gambler_roulette_item matches 8 at @s run attribute @s max_health base set 28
            execute as @a if score @s gambler_roulette_item matches 9 at @s run attribute @s max_health base set 29
            execute as @a if score @s gambler_roulette_item matches 10 at @s run attribute @s max_health base set 30
            execute as @a if score @s gambler_roulette_item matches 11 at @s run attribute @s max_health base set 31
            execute as @a if score @s gambler_roulette_item matches 12 at @s run attribute @s max_health base set 32
            execute as @a if score @s gambler_roulette_item matches 13 at @s run attribute @s max_health base set 33
            execute as @a if score @s gambler_roulette_item matches 14 at @s run attribute @s max_health base set 34
            execute as @a if score @s gambler_roulette_item matches 15 at @s run attribute @s max_health base set 35
            execute as @a if score @s gambler_roulette_item matches 16 at @s run attribute @s max_health base set 36
            execute as @a if score @s gambler_roulette_item matches 17 at @s run attribute @s max_health base set 37
            execute as @a if score @s gambler_roulette_item matches 18 at @s run attribute @s max_health base set 38
            execute as @a if score @s gambler_roulette_item matches 19 at @s run attribute @s max_health base set 39
            execute as @a if score @s gambler_roulette_item matches 20 at @s run attribute @s max_health base set 40

    
    execute as @a if score @s gambler_roulette matches 0 at @s run scoreboard players set @s gambler_roulette 101
    execute as @a if score @s gambler_roulette_item matches 1..20 at @s run scoreboard players set @s gambler_roulette_item 0


