execute as @a at @s run summon marker ~ ~ ~ {Tags:["freeze_player"]}
    scoreboard players set プレイヤーの動きを止める gambler_roll_or_died_freeze 1
#playsound
    playsound entity.ender_dragon.growl master @a ~ ~ ~ 1 0.5

function onigodatapack:classlist/gambler/roll_or_died/roulette/roulette
