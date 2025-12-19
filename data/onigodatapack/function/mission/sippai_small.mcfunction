tellraw @a "ミッション失敗！"
tellraw @a "逃げ側には発光効果が与えられた"
tellraw @a "鬼側には俊足が配られた"


#effect
    effect give @a[team=runner] glowing 7 0 false



#demon_item
    give @a[team=demon] minecraft:heart_of_the_sea[minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false},minecraft:item_name={text:"瞬足",color:"#00FFFF",bold:true},minecraft:lore=["右クリックで使用可能"]] 2




#function
    function onigodatapack:mission/stop_small
