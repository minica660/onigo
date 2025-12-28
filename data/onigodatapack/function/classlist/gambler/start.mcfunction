#体力初期1
    damage @s 19
#スタミナ1
    scoreboard players set @s stamina 10


#スコアボード
    scoreboard players set @s gambler_roulette 101


#アイテム
    give @s minecraft:red_dye[minecraft:use_cooldown={seconds:180},minecraft:consumable={consume_seconds:0,animation:'none',sound:'minecraft:entity.experience_orb.pickup',has_consume_particles:false}] 1
    function onigodatapack:classlist/gambler/gacha/item
    function onigodatapack:classlist/gambler/roll_or_died/item
