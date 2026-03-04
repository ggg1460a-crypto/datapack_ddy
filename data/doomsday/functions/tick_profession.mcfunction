
# cd
scoreboard players remove @a[scores={ddy_cd1=1..}] ddy_cd1 1
scoreboard players remove @a[scores={ddy_useing_ult=1..}] ddy_useing_ult 1


#開箱加分
execute as @e[tag=!had_open,tag=ddy_chest] at @s if entity @p[distance=..5,scores={ddy_open_chest_stat=1..}] run function doomsday:game/chest_open
#重置ddy_open_chest_stat
execute as @a[scores={ddy_open_chest_stat=1..}] run scoreboard players set @s ddy_open_chest_stat 0


#assassin
# 道具ㄧ判定
execute as @a[tag=ddy_assassin,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:1b,item_id:1b}}}] run function doomsday:profession_bringer/assassin/use_item1


# 道具二：隱形藥水自動刷新 (30秒 = 600 ticks)
# 當 CD 到 0 且身上沒有藥水時發放
execute as @a[tag=ddy_assassin,scores={ddy_cd1=..1}] unless entity @s[nbt={Inventory:[{tag:{ddy_item:2b,item_id:1b}}]}] run function doomsday:profession_bringer/assassin/give_item2
execute as @a if entity @a[tag=ddy_assassin,scores={ddy_cd1=..0}] run scoreboard players set @s ddy_cd1 600
# 道具三判定
execute as @a[tag=ddy_assassin,scores={ddy_use_item=1..,ddy_damage=150..},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run function doomsday:profession_bringer/assassin/use_item3
#當使用道具三時ddy_damage未達150 tellraw @s {"text":"造成傷害量不足150無法使用暗影斬!","color":"red"}
execute as @a[tag=ddy_assassin,scores={ddy_use_item=1..,ddy_damage=..149},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run tellraw @s {"text":"造成傷害量不足150無法使用暗影斬!","color":"red"}

execute as @e[tag=ddy_assassin,scores={ddy_useing_ult=0}] run function doomsday:profession_bringer/assassin/give_item3

# 重置右鍵分數
scoreboard players set @a ddy_use_item 0
