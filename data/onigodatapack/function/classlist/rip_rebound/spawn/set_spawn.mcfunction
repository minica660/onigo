#スポーン地点となるための保存エンティティを召喚
    summon interaction ~ ~ ~ {Tags:["rip_rebound_spawn"],width:0f,height:0f}
        #data変更
            data merge entity @n[type=minecraft:interaction,tag=rip_rebound_spawn] {interaction:{player:[I;0,0,0,0],timestamp:0L}}
            data modify entity @n[type=minecraft:interaction,tag=rip_rebound_spawn] interaction.player set from entity @s UUID
    #墓
