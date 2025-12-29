#xp(スタミナ)max
    scoreboard players set @s stamina 1000
#HP16に変更
    attribute @s max_health base set 16
    #再リスポーン可能にするスコア
        give @s minecraft:anvil[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"復活！",color:"#ffcf4b",bold:true},minecraft:lore=["右クリックで使用可能"]]
        give @s minecraft:creeper_banner_pattern[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"復活地点の設定！",color:"#b2ff2d",bold:true},minecraft:lore=["右クリックで使用可能"]]
