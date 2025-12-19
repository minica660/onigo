#tp_unjailed_runner=ミッション2成功
tellraw @a "解放ミッション成功！"

#advancement
    advancement grant @a[team=runner] only onigodatapack:unjailed

#scoreboard death_runner remove score:1
    scoreboard players add 逃げ側死亡数 death_runner 1


#tp(tag:jailed_runner)
    #tpプレイヤーをタグ付け
        tag @r[team=runner,tag=jailed_runner,limit=2] add unjailed_runner_tp
        tp @a[team=runner,tag=unjailed_runner_tp] 144 2 19
        tag @a[team=runner,tag=unjailed_runner_tp] remove jailed_runner
        tag @a[team=runner,tag=unjailed_runner_tp] remove unjailed_runner_tp





function onigodatapack:mission/stop_unjailed_runner
