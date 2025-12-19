#メッセージ
    tellraw @a[team=runner] "50秒間サイズが小さくなります"
    tellraw @a "逃げ側のサイズが小さくなった"
#score
    scoreboard players set _mission_small_sub_ mission_small_sub 1
#size
    execute as @a[team=runner] at @s run attribute @s minecraft:scale base set 0.25



#runner_item
    give @a[team=runner] iron_ingot[item_model=	totem_of_undying,minecraft:item_name={text:"不死のトーテム",color:"#fcfffb",bold:true},minecraft:lore=["気を付けて！よく確認して！"]]



#function 
    function onigodatapack:mission/stop_small