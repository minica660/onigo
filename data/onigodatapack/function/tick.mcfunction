#アイテム効果関連
    #click_heart_of_the_sea    
        execute as @a[scores={click_heart_of_the_sea=1..}] run effect give @s speed 8 4 false
        execute as @a[scores={click_heart_of_the_sea=1..}] run scoreboard players set @a click_heart_of_the_sea 0

    #click_rabbit_foot
        execute as @a if predicate onigodatapack:rabbit_foot_sneaking run effect give @s slowness 1 1 false
        execute as @a[scores={click_rabbit_foot=1..}] run effect give @s levitation 1 60 false
        execute as @a[scores={click_rabbit_foot=1..}] run effect give @s resistance 6 5 true
        execute as @a[scores={click_rabbit_foot=1..}] run scoreboard players set @a click_rabbit_foot 0
        
    #click_conduit    
        execute as @a[scores={click_conduit=1..}] run effect give @a[team=runner] resistance 6 4
        execute as @a[scores={click_conduit=1..}] run effect give @a[team=runner] instant_health 10 50
        execute as @a[scores={click_conduit=1..}] run effect give @a[team=runner] speed 6 3
        execute as @a[scores={click_conduit=1..}] run effect give @a[team=runner] jump_boost 6 3

        execute as @a[scores={click_conduit=1..}] at @a[team=demon] run playsound minecraft:entity.ghast.scream hostile @s ~ ~ ~ 0.5 0.5
        execute as @a[scores={click_conduit=1..}] at @a[team=runner] run playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

        execute as @a[scores={click_conduit=1..}] at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 50 normal
        execute as @a[scores={click_conduit=1..}] at @s run particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0.05 30 normal
        #この下の行のパーティクルは1.21.9にしたところ使えなくなったためカスタムパーティクル制作予定  
            execute as @a[scores={click_conduit=1..}] at @s run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0 1 normal
        execute as @a[scores={click_conduit=1..}] run clear @s conduit 1
        execute as @a[scores={click_conduit=1..}] run scoreboard players set @s click_conduit 0

    #click_charcoal煙幕
        execute as @a[scores={click_charcoal=1..}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,NoGravity:1b,Tags:["smoke_armorstand"],active_effects:[{id:"minecraft:night_vision",duration:200,amplifier:0,ambient:0b,show_particles:0b,show_icon:1b}]}

        execute as @a[scores={click_charcoal=1..}] run scoreboard players set @s click_charcoal 0
        #particle
            execute as @e[type=armor_stand,tag=smoke_armorstand] at @s run particle minecraft:campfire_signal_smoke ~ ~ ~ 2.5 1.40 2.5 0 35 force
            execute at @e[type=armor_stand,tag=smoke_armorstand] run effect give @a[team=demon,distance=..4] slowness 1 0 false
            execute at @e[type=armor_stand,tag=smoke_armorstand] run effect give @a[team=demon,distance=..3] blindness 2 0 false
            #検知（エフェクト持っているか（暗視））
                execute as @e[type=armor_stand,tag=smoke_armorstand] unless data entity @s {active_effects:[{id:"minecraft:night_vision"}]} run kill @s
    
    #click_quartz
        execute as @a[scores={click_quartz=1..}] run effect give @a[team=runner] instant_health 1 0 true
        execute as @a[scores={click_quartz=1..}] at @a[team=runner] run particle trial_spawner_detection ~ ~ ~ 1 0.1 1 0 20 force
        execute as @a[scores={click_quartz=1..}] at @a[team=runner] run particle heart ~ ~ ~ 2 0.3 2 0 5 force
        execute as @a[scores={click_quartz=1..}] run scoreboard players set @s click_quartz 0

    #click_blaze_powder
        execute as @a[scores={click_blaze_powder=1..}] at @s run function onigodatapack:lightning
        execute as @a[scores={click_blaze_powder=1..}] run scoreboard players set @s click_blaze_powder 0

    #click_compass
        execute as @a if score @s click_compass matches 1.. run effect give @a[team=runner] glowing 7 0 false
        execute as @a if score @s click_compass matches 1.. run effect give @a[team=runner] slowness 7 0 false
        execute as @a if score @s click_compass matches 1.. run scoreboard players set @s click_compass 0

    #click_golden_sword
        execute as @a if score @s click_golden_sword matches 1.. run function onigodatapack:golden_sword


            execute as @a if score @s click_golden_sword matches 1.. run scoreboard players set @s click_golden_sword 0
                #弱体化
                    execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run effect give @s minecraft:weakness 2 1 true
                    #armor_stand
                        execute as @e[type=armor_stand,tag=golden_sword] at @s run function onigodatapack:golden_sword_armorstand
                    #damage
                        execute as @e if data entity @s {active_effects:[{id:"minecraft:water_breathing"}]} run damage @s 0.01



    #gambler
        function onigodatapack:classlist/gambler/roulette
        #gacha
            function onigodatapack:classlist/gambler/gacha/tick
    #rip_rebound
        function onigodatapack:classlist/rip_rebound/tick
    #roll_or_died
        function onigodatapack:classlist/gambler/roll_or_died/tick
    #noob
        function onigodatapack:classlist/noob/tick
             




#effect 
    execute if score メイン main matches 1 at @a[team=demon,gamemode=adventure] run particle minecraft:trial_omen ~ ~1 ~ 0.5 0.5 0.5 0.05 1 force
    effect give @a[team=demon] mining_fatigue 2 5 true
    effect give @a saturation infinite 0 true

#instant_health
    scoreboard players remove 体力回復 sub_countdown 1
    execute if score 体力回復 sub_countdown matches 1 run effect give @a instant_health 1 0 true
    execute if score 体力回復 sub_countdown matches ..0 run scoreboard players set 体力回復 sub_countdown 140
 



#demon_interaction 左クリック検知
    execute as @e[type=interaction,tag=demon_interaction,nbt={attack:{}}] at @s run tellraw @s "まだ鬼は動き出すことができません！"
    execute as @e[type=interaction,tag=demon_interaction,nbt={attack:{}}] at @s run data remove entity @s attack








#death_count
    
    #死亡したらスコアを0に
            #逃げ側が死亡したら　demon_winのタグをつける
                execute as @a[team=runner,scores={death_count=1..}] run scoreboard players remove 逃げ側死亡数 death_runner 1
                    #rip_rebound特殊残り時間延長
                        execute as @a[team=runner,tag=class_5,scores={death_count=1..}] run scoreboard players add 残り時間 game_main 35
            #死亡したらtag jailed_runner
                execute as @a[team=runner,scores={death_count=1..}] run tag @s add jailed_runner
                execute as @a[team=runner,scores={death_count=1..}] run gamemode spectator @s
                execute as @a[team=runner,scores={death_count=1..}] run scoreboard players set @s runner_spawn_sub 1
                execute as @a[team=runner,scores={death_count=1..}] run scoreboard players set _check_runner_jailed_ check_runner_jailed 1
            
                
        
        execute as @a[scores={death_count=1..}] run scoreboard players set @s death_count 0


#death_runner
    #matchesのスコアを変えることで何人死亡したらというのを実現
        execute as @a if score 逃げ側死亡数 death_runner matches 0 run function onigodatapack:stop/demon_win



#ロケーションバー消しようのXP変動
    xp set @a 129 levels




#ミッション
    #mission_small
        #感圧版２つ同時に押しているか検知
            execute if score _check_small_ mission_small matches 2 run function onigodatapack:mission/small_small
            #制御
                scoreboard players set _check_small_ mission_small 0

        #flash
            #25行目で記述の通りフラッシュパーティクル一時避難パーティクルに変更
            execute as @e[type=armor_stand,tag=small_marker] at @s run particle minecraft:large_smoke ~ ~ ~
        #small
            execute if score _mission_small_sub_ mission_small_sub matches 1.. run scoreboard players remove _mission_small_small_ mission_small_small 1
                #制御
                    execute if score _mission_small_small_ mission_small_small matches 0 as @a[team=runner] at @s run attribute @s minecraft:scale base set 1
                    execute if score _mission_small_small_ mission_small_small matches 0 run scoreboard players set _mission_small_sub_ mission_small_sub 0
                    execute if score _mission_small_small_ mission_small_small matches 0 run scoreboard players set _mission_small_small_ mission_small_small -1

    #mission_unjailed
        #slime_glowing
            execute if score _mission_2_ mission_2 matches 1 run effect give @e[type=slime] glowing 1 0 true
        #slime_invisibility
            execute if score _mission_2_ mission_2 matches 1 run effect give @e[type=slime] invisibility 1 0 true



#bossbar
    execute store result bossbar my:my_bossbar value run scoreboard players get 残り時間 game_main
    #bossbar color
        execute if score 残り時間 game_main matches 60 run bossbar set my:my_bossbar color red



#lightning
    execute if score _lightning_sub_ lightning_sub matches 1.. if score _sub_countdown_ sub_countdown matches 1 run scoreboard players add _lightning_ lightning 1
    execute if score _lightning_ lightning matches 1 run function onigodatapack:lightning_bolt
    execute if score _lightning_ lightning matches 1 run scoreboard players set _lightning_sub_ lightning_sub 0
    execute if score _lightning_ lightning matches 1 run scoreboard players set _lightning_ lightning 0
        #effect検知
            execute as @a if data entity @s {active_effects:[{id:"minecraft:unluck"}]} run particle enchant ~ ~ ~ 0.5 0.7 0.5 1 20 force
            execute as @a if data entity @s {active_effects:[{id:"minecraft:unluck"}]} run damage @s 1


#stamina
    function onigodatapack:xp


