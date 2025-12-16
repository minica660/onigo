#逃げようアイテム
    #class_1
        #海洋の心(共通)
            give @a[team=runner,tag=class_1] minecraft:heart_of_the_sea[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"瞬足",color:"#00FFFF",bold:true},minecraft:lore=["右クリックで使用可能"]] 4
        #大ジャンプ（1秒）   
            give @a[team=runner,tag=class_1] minecraft:rabbit_foot[minecraft:consumable={consume_seconds:1,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"大ジャンプ",color:"#FFD700",bold:true},minecraft:lore=["右クリック1秒で使用可能"]] 2
        #透明化
            give @a[team=runner,tag=class_1] potion[custom_name="透明化",potion_contents={"custom_color":16183279,"custom_effects":[{"id":"invisibility","amplifier":0,"duration":200,"show_particles":false}]}]
        #鈍足効果3を3秒間与えるスプラッシュポーション
            give @a[team=runner,tag=class_1] splash_potion[custom_name='逃げ用',lore=["逃げる時に役立つアイテムかも知れない"],potion_contents={"custom_color":6447746,"custom_effects":[{"id":"slowness","amplifier":2,"duration":140,"show_icon":false},{"id":"blindness","amplifier":0,"duration":80,"show_particles":false},{"id":"glowing","amplifier":0,"duration":40}]}] 2
    #class_2(ヒール)
        #海洋の心(共通)
            give @a[team=runner,tag=class_2] minecraft:heart_of_the_sea[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"瞬足",color:"#00FFFF",bold:true},minecraft:lore=["右クリックで使用可能"]] 2
        #回復（全員）
            give @a[team=runner,tag=class_2] minecraft:quartz[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"回復",color:"#ff65f0",bold:true},minecraft:lore=["右クリックで味方の体力を♡2つ分回復"]] 1
        #回復スプラッシュ
            give @a[team=runner,tag=class_2] splash_potion[custom_name='回復スプラッシュポーション',lore=["使い方によって多くのプレイヤーを回復させることが可能"],potion_contents={"custom_effects":[{"id":"regeneration","amplifier":3,"duration":100,"show_icon":false}]}] 2
        #逃げ用スプラッシュポーション
            give @a[team=runner,tag=class_2] splash_potion[custom_name='逃げ用',lore=["逃げる時に役立つアイテムかも知れない"],potion_contents={"custom_color":6447746,"custom_effects":[{"id":"slowness","amplifier":2,"duration":140,"show_icon":false},{"id":"blindness","amplifier":0,"duration":80,"show_particles":false},{"id":"glowing","amplifier":0,"duration":40}]}] 2

    #class_3(防御特化)
        #大ジャンプ（1秒）   
           give @a[team=runner,tag=class_3] minecraft:rabbit_foot[minecraft:consumable={consume_seconds:1,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"大ジャンプ",color:"#FFD700",bold:true},minecraft:lore=["右クリック1秒で使用可能"]] 2
         #煙幕？
            give @a[team=runner,tag=class_3] minecraft:charcoal[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"煙幕",color:"#f0a254",bold:true},minecraft:lore=["右クリックで使用可能"]] 2
        #一発逆転(5秒)    
            give @a[team=runner,tag=class_3] minecraft:conduit[minecraft:consumable={consume_seconds:5,animation:'none',sound:'minecraft:entity.lightning_bolt.impact',has_consume_particles:false},minecraft:item_name={text:"一発逆転？",color:"#ff97e5",bold:true},minecraft:lore=["右クリック5秒で使用可能"]]
        #トーテム
            give @a[team=runner,tag=class_3] totem_of_undying[enchantments={},item_name={text:"トーテム",color:"#FFD700",bold:true},lore=["一度だけ生き残ることができる"]]
        #爆発（雷）
           give @a[team=runner,tag=class_3] minecraft:blaze_powder[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"危機一髪",color:"#fcff62",bold:true},minecraft:lore=["右クリックで使用可能"]]
        #逃げ用スプラッシュポーション
            give @a[team=runner,tag=class_3] splash_potion[custom_name='逃げ用',lore=["逃げる時に役立つアイテムかも知れない"],potion_contents={"custom_color":6447746,"custom_effects":[{"id":"slowness","amplifier":2,"duration":140,"show_icon":false},{"id":"blindness","amplifier":0,"duration":80,"show_particles":false},{"id":"glowing","amplifier":0,"duration":40}]}] 1
    
        #gambler
            execute as @a[team=runner,tag=class_4] at @s run function onigodatapack:classlist/gambler/start
        #RIP_rebound
            execute as @a[team=runner,tag=class_5] at @s run function onigodatapack:classlist/rip_rebound/start
    #望遠鏡
        give @a[team=runner] spyglass
#鬼用アイテム

    #main武器
        give @a[team=demon] stick[custom_name='鬼用',lore=["逃げ側を捕まえることのできる特殊な棒"],unbreakable={},enchantments={"sharpness":5},attribute_modifiers=[{"type":"attack_damage","amount":8,"operation":"add_value","slot":"mainhand","id":"25513008"},{"type":"attack_speed","amount":0.01,"operation":"add_value","slot":"mainhand","id":"-138852310"},{"type":"attack_knockback","amount":2,"operation":"add_value","slot":"mainhand","id":"-603349992"},{"type":"entity_interaction_range","amount":-1.1,"operation":"add_value","id":"-606334690"}]]
        
    #俊足（鬼用）
        give @a[team=demon] minecraft:heart_of_the_sea[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"瞬足",color:"#00FFFF",bold:true},minecraft:lore=["右クリックで使用可能"]] 6

    #追跡(0秒)
        give @a[team=demon] minecraft:compass[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"追跡",color:"#c563fa",bold:true},minecraft:lore=["右クリックで使用可能"]] 3
    #望遠鏡
        give @a[team=demon] spyglass 1
    #装着
        #頭（お面）
            item replace entity @a[team=demon] armor.head with prismarine_shard[custom_name="鬼のヘルメット",lore=["鬼用のヘルメット"]]
    

        



#give @a[team=runner] conduit[minecraft:consumable={consume_duration:100,animation:'none',sound:'minecraft:entity.wither.spawn',has_consume_particles:false}]



 give @a minecraft:golden_sword[minecraft:consumable={consume_seconds:1,animation:'none',sound:'minecraft:entity.evoker.prepare_summon',has_consume_particles:false}]