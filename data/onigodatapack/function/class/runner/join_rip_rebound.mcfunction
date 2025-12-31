#リップリバウンドクラス
    #他のクラスtag削除
        tag @s remove class_1
        tag @s remove class_2
        tag @s remove class_3
        tag @s remove class_4

#class_4追加
    tag @s add class_5


#クラス選択メッセージ
    tellraw @s "クラス5 リップリバウンドクラスを選択しました"
    #全体メッセージ
        tellraw @a [{"selector":"@s"},{"text":" のクラスを逃げ側Rip_Reboundクラスに設定しました"}]
