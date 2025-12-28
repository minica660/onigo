#marker削除
    execute as @a at @s run kill @n[type=marker,tag=freeze_player]
    #score_reset
        scoreboard players set プレイヤーの動きを止める gambler_roll_or_died_freeze 0
