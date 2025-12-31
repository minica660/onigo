#防御特化
    #他のクラスtag削除
        tag @s remove class_1
        tag @s remove class_2
        tag @s remove class_4
        tag @s remove class_5

#class_1追加
    tag @s add class_3


#クラス選択メッセージ
    tellraw @s "クラス3を選択しました"
    #全体メッセージ
        tellraw @a [{"selector":"@s"},{"text":" のクラスを逃げ側防御特化クラスに設定しました"}]
