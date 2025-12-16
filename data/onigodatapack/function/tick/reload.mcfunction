say データパックのリロードが完了しました
say 現在onigodatapackが入っています







#スコアボードタイマー
    #メイン
        scoreboard objectives add main dummy

        scoreboard objectives add sub_countdown dummy
        scoreboard objectives add game_deth_count deathCount "死んだ回数"
        scoreboard objectives add game_kill_count playerKillCount "キル回数"
        
    #item_scoreboard
        scoreboard objectives add click_heart_of_the_sea minecraft.used:minecraft.heart_of_the_sea
        scoreboard objectives add click_compass minecraft.used:minecraft.compass
      
        scoreboard objectives add click_rabbit_foot minecraft.used:minecraft.rabbit_foot
        scoreboard objectives add click_conduit minecraft.used:minecraft.conduit
        scoreboard objectives add click_charcoal minecraft.used:charcoal
        scoreboard objectives add click_quartz minecraft.used:quartz
        scoreboard objectives add click_blaze_powder minecraft.used:minecraft.blaze_powder
        scoreboard objectives add click_golden_sword minecraft.used:golden_sword

    #サブ（キル数等）
        scoreboard objectives add death_count deathCount "死亡回数"
        scoreboard objectives add player_kill_count playerKillCount "キル数"
        scoreboard objectives add golden_sword_duration dummy
        scoreboard objectives add lightning dummy
        scoreboard objectives add lightning_sub dummy
        scoreboard objectives add runner_spawn dummy "逃げ側スポーン"
        scoreboard objectives add runner_spawn_sub dummy
        scoreboard objectives add check_runner_jailed dummy
        scoreboard objectives add game_main dummy "鬼ごっこ"
            scoreboard players set 残り時間 game_main 0
        scoreboard objectives add stamina dummy
        scoreboard objectives add stamina_sub dummy
        scoreboard objectives add health health "HP"
        #gambler
            scoreboard objectives add gambler_roulette dummy
                scoreboard objectives add gambler_roulette_check minecraft.used:minecraft.red_dye
                    scoreboard objectives add gambler_roulette_item dummy
            #スコアボード
                scoreboard players set @a gambler_roulette 101
                #gacha
                    scoreboard objectives add gambler_gacha_item_check minecraft.used:minecraft.trial_key
                    scoreboard objectives add gambler_gacha_random dummy
                #roll_or_died
                    scoreboard objectives add gambler_roll_or_died_freeze dummy
                    scoreboard objectives add gambler_roll_or_died_item minecraft.used:minecraft.copper_horse_armor
                    scoreboard objectives add gambler_roll_or_died_roulette dummy
                        
        #rip_rebound
            #item
                scoreboard objectives add rip_rebound_item_anvil minecraft.used:minecraft.anvil
                scoreboard objectives add rip_rebound_item_spawn minecraft.used:minecraft.creeper_banner_pattern
        
        #noob
            #gun
                scoreboard objectives add noob_gun_item minecraft.used:minecraft.wooden_hoe
                scoreboard objectives add noob_gun_dannyaku dummy
                scoreboard objectives add noob_gun_cooldown dummy
            #tot
                scoreboard objectives add noob_tot_item minecraft.used:minecraft.field_masoned_banner_pattern
                scoreboard objectives add noob_tot_time dummy
            
            #glowing
                scoreboard objectives add noob_glowing dummy
    
    #勝敗用
        scoreboard objectives add death_runner dummy "逃げ側死亡数"


    #mission
        scoreboard objectives add mission dummy
            scoreboard objectives add mission_2 dummy "ミッション2成功の有無"
        scoreboard objectives add mission_small dummy "感圧版チェック"
        scoreboard objectives add mission_small_sub dummy "サイズ小さくサブ"
        scoreboard objectives add mission_small_small dummy "サイズ小さく経過時間"
        





#チーム
    team add demon "<鬼>"
    team modify demon color dark_red
    team modify demon prefix "＜鬼＞"

        team add runner "<逃げ>"
        team modify runner color aqua
        team modify runner prefix "＜逃げ＞"
        team modify runner friendlyFire false










#timer_bossbar create
    bossbar add my:my_bossbar "残り時間"
    bossbar set my:my_bossbar max 1200
    bossbar set my:my_bossbar color green
    bossbar set my:my_bossbar style notched_20
#start_bossbar.mcfunctionファイルのほうで実行する大事な内容scoreboard players set #bossbar_data bossbar_health 240



#fill
    fill 4 -28 2 4 -30 -4 black_stained_glass

#逃げ側人数既存へ（1人）
scoreboard players set 逃げ側死亡数 death_runner 1









