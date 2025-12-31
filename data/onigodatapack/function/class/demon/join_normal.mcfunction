#リップリバウンドクラス
    #他のクラスtag削除
        tag @s remove class_2
        tag @s remove class_3
        tag @s remove class_4
        tag @s remove class_5

#class_1追加
    tag @s add class_1


#クラス選択メッセージ
    tellraw @s "鬼側クラス1 ノーマルクラスを選択しました"
    #全体メッセージ
        tellraw @a [{"selector":"@s"},{"text":" のクラスを鬼ノーマルクラスに設定しました"}]
