#常時実行ファイル
    #gun
        execute as @a if score @s noob_gun_item matches 1.. if score @s noob_gun_dannyaku matches 1..6 at @s anchored eyes run function onigodatapack:classlist/noob/gun/shot
            execute as @a if score @s noob_gun_item matches 1.. if score @s noob_gun_dannyaku matches 1..6 at @s run scoreboard players remove @s noob_gun_dannyaku 1
            #弾薬補充
                execute as @a if score @s noob_gun_item matches 1.. at @s run function onigodatapack:classlist/noob/gun/gun_hojuu
            #弾薬なし
                execute as @a if score @s noob_gun_item matches 1.. unless score @s noob_gun_dannyaku matches 1..6 at @s run tellraw @s {"text":"弾薬が足りません","color":"red"}
                execute as @a if score @s noob_gun_item matches 1.. unless score @s noob_gun_dannyaku matches 1..6 at @s run playsound entity.warden.death master @s ~ ~ ~ 2 2
                #リロード
                    execute as @a if score @s noob_gun_item matches 1.. unless score @s noob_gun_dannyaku matches 1..6 at @s run tag @s add no_danyaku
                        #スコアボード
                            execute as @a if score @s noob_gun_item matches 1.. unless score @s noob_gun_dannyaku matches 1..6 unless score @s noob_gun_cooldown matches 1..200 at @s run scoreboard players set @s noob_gun_cooldown 200
                            execute as @a if score @s noob_gun_cooldown matches 0..200 at @s run scoreboard players remove @s noob_gun_cooldown 1
                                execute as @a if score @s noob_gun_cooldown matches 1 at @s run scoreboard players set @s noob_gun_dannyaku 6
                                execute as @a if score @s noob_gun_cooldown matches 1 at @s run clear @s wooden_hoe 1
                                execute as @a if score @s noob_gun_cooldown matches 1 at @s run give @s minecraft:wooden_hoe[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.iron_golem.hurt',has_consume_particles:false},minecraft:item_name={text:"リボルバー",color:"#a6daed",bold:true},minecraft:lore=["右クリックで使用可能"],max_damage=7]
                                execute as @a if score @s noob_gun_cooldown matches 1 at @s run tag @s remove no_danyaku
                                    execute as @a if score @s noob_gun_cooldown matches ..0 at @s run scoreboard players set @s noob_gun_cooldown 0




                        execute as @a if score @s noob_gun_item matches 1.. at @s run scoreboard players set @s noob_gun_item 0
            
                
        #制御
            execute as @a if score @s noob_gun_dannyaku matches ..0 at @s run scoreboard players set @s noob_gun_dannyaku 0
    
    #tot
        execute as @a if score @s noob_tot_item matches 1.. at @s run tag @s add noob_tot_me
        execute as @a if score @s noob_tot_item matches 1.. at @s run tag @a[team=runner,tag=!noob_tot_me] add noob_tot
        execute as @a if score @s noob_tot_item matches 1.. at @s run scoreboard players set @s noob_tot_time 120
            execute as @a if score @s noob_tot_time matches 1..120 at @s run scoreboard players remove @s noob_tot_time 1
                execute as @a if score @s noob_tot_time matches 1 at @s run tag @a remove noob_tot
                execute as @a if score @s noob_tot_time matches 1 at @s run tag @a remove noob_tot_me
                    execute as @a if score @s noob_tot_time matches ..0 at @s run scoreboard players set @s noob_tot_time 0
            execute as @a if score @s noob_tot_item matches 1.. at @s run effect give @s speed 3 1 true
            execute as @a if score @s noob_tot_item matches 1.. at @s run effect give @a[team=runner,tag=noob_toot] slowness 6 1 true
                #particle
                    execute as @a[tag=noob_tot] at @s run particle minecraft:splash ~ ~ ~ ~0.5 1 ~0.5 1 200 force @a
                        
                            execute as @a if score @s noob_tot_item matches 1.. at @s run scoreboard players set @s noob_tot_item 0


#初心者の感(発光)
    scoreboard players remove noob_glow noob_glowing 1
        #ランダム
            execute if score noob_glow noob_glowing matches 0 store result score noob_glow_random noob_glowing run random value 1..2
            #自分自身の場所発光
                execute if score noob_glow noob_glowing matches 0 if score noob_glow_random noob_glowing matches 1 as @a[team=demon,tag=class_2] at @n[team=runner] run function onigodatapack:classlist/noob/passive/1glowing
            #周辺発光
                execute if score noob_glow noob_glowing matches 0 if score noob_glow_random noob_glowing matches 2 as @a[team=demon,tag=class_2] at @n[team=runner] run function onigodatapack:classlist/noob/passive/glowing
                #制御
                    execute if score noob_glow noob_glowing matches ..0 run scoreboard players set noob_glow noob_glowing 300
            #スライムキル
                execute if score noob_glow noob_glowing matches 200 run kill @e[type=slime,tag=noob_glow_slime]
