#鬼側、逃げ側の人数をgame_mainスコアボードに表示します
    #鬼側人数確認
        #以前のスコアリセット
            scoreboard players set 鬼側人数 game_main 0
        #検知
            execute as @a[team=demon] run scoreboard players add 鬼側人数 game_main 1
    #逃げ側人数確認
        #以前のスコアリセット
            scoreboard players set 逃げ側人数 game_main 0
        #検知
            execute as @a[team=runner] run scoreboard players add 逃げ側人数 game_main 1
     #逃げ側死亡上限人数セット
        #以前のスコアリセット
            scoreboard players set 逃げ側死亡数 death_runner 0
        #検知
            execute as @a[team=runner] run scoreboard players add 逃げ側死亡数 death_runner 1
    


    #アクションバー表示
        title @a actionbar [{"text":"鬼側人数: "},{"score":{"name":"鬼側人数","objective":"game_main"}},{"text":" | 逃げ側人数: "},{"score":{"name":"逃げ側人数","objective":"game_main"}}]