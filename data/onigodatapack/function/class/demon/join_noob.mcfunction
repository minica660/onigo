#リップリバウンドクラス
    #他のクラスtag削除
        tag @s remove class_1
        tag @s remove class_3
        tag @s remove class_4
        tag @s remove class_5

#class_4追加
    tag @s add class_2


#クラス選択メッセージ
    tellraw @s "鬼側クラス2 noob1337クラスを選択しました"
    #全体メッセージ
        tellraw @a [{"selector":"@s"},{"text":" のクラスを鬼noobクラスに設定しました"}]
