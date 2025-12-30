#プレイヤー周辺召喚
    summon minecraft:slime ~ ~1 ~ {Tags:["noob_glow_slime"],Size:0,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b}

#チームに追加
    execute as @e[type=slime,tag=noob_glow_slime] at @s run team join runner

#スライム発光
    effect give @e[type=slime,tag=noob_glow_slime] glowing infinite 0 true
