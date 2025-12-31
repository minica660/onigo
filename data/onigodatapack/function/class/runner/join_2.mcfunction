#ヒール
    #他のクラスtag削除
        tag @s remove class_1
        tag @s remove class_3
        tag @s remove class_4
        tag @s remove class_5

#class_1追加
    tag @s add class_2


#クラス選択メッセージ
    tellraw @s "クラス2を選択しました"
    #全体メッセージ
        tellraw @a [{"selector":"@s"},{"text":" のクラスを逃げ側ヒールクラスに設定しました"}]
