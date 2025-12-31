#ギャンブラークラス
    #他のクラスtag削除
        tag @s remove class_1
        tag @s remove class_2
        tag @s remove class_3
        tag @s remove class_5

#class_4追加
    tag @s add class_4


#クラス選択メッセージ
    tellraw @s "クラス4 ギャンブラークラスを選択しました"
    #全体メッセージ
        tellraw @a [{"selector":"@s"},{"text":" のクラスを逃げ側ギャンブラークラスに設定しました"}]
