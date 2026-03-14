
#開箱加分
execute as @e[tag=!had_open,tag=ddy_chest] at @s if entity @p[distance=..5,scores={ddy_open_chest_stat=1..}] run function doomsday:game/chest_open
#重置ddy_open_chest_stat
execute as @a[scores={ddy_open_chest_stat=1..}] run scoreboard players set @s ddy_open_chest_stat 0



#end_bringer


# 武器一判定
execute as @e[nbt={HurtTime:10s}] at @s if entity @a[distance=..6,tag=ddy_end_bringer,nbt={SelectedItem:{tag:{ddy_item:4b}}},scores={ddY_damage_instant=1..}] run effect give @s blindness 1 0 false

# 武器二判定
execute as @e[nbt={HurtTime:10s}] at @s if entity @a[distance=..6,tag=ddy_end_bringer,nbt={SelectedItem:{tag:{ddy_item:5b}}},scores={ddY_damage_instant=1..}] run effect give @s blindness 1 0 false
execute as @e[nbt={HurtTime:10s}] at @s if entity @a[distance=..6,tag=ddy_end_bringer,nbt={SelectedItem:{tag:{ddy_item:5b}}},scores={ddY_damage_instant=1..}] run effect give @s slowness 1 0 false


# 道具ㄧ判定
execute as @a[tag=ddy_end_bringer,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:1b,item_id:1b}}}] run function doomsday:profession_bringer/end_bringer/use_item1


# 道具二判定
execute as @a[tag=ddy_end_bringer,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:2b,item_id:1b}}}] run function doomsday:profession_bringer/end_bringer/use_item2
execute if score #global ddy_state matches 2 as @a[tag=ddy_end_bringer,scores={ddy_cd1=..1}] unless entity @s[nbt={Inventory:[{tag:{ddy_item:2b,item_id:1b}}]}] run function doomsday:profession_bringer/end_bringer/give_item2
execute as @a[tag=ddy_end_bringer,gamemode=spectator,scores={ddy_cd2=..0}] run gamemode adventure @s

# 道具三判定
execute as @e[nbt={HurtTime:10s}] at @s as @a[distance=..6,tag=ddy_end_bringer,nbt={SelectedItem:{tag:{ddy_item:3b}}},scores={ddy_damage=..89}] run tellraw @s {"text":"造成傷害量不足90無法使用末日恐懼!","color":"red"}

execute as @e[nbt={HurtTime:10s}] at @s if entity @a[distance=..6,tag=ddy_end_bringer,nbt={SelectedItem:{tag:{ddy_item:3b}}},scores={ddy_damage=90..,ddY_damage_instant=1..}] run tag @s add ddy_end_bringer_skill3
execute as @e[nbt={HurtTime:10s}] at @s as @a[distance=..6,tag=ddy_end_bringer,nbt={SelectedItem:{tag:{ddy_item:3b}}},scores={ddy_damage=90..,ddY_damage_instant=1..}] run scoreboard players remove @s ddy_damage 90

execute as @e[tag=ddy_end_bringer_skill3] run effect give @s slowness infinite 0 false








#assassin
# 道具ㄧ判定
execute as @a[tag=ddy_assassin,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:1b,item_id:1b}}}] run function doomsday:profession_bringer/assassin/use_item1


# 道具二：隱形藥水自動刷新 
# 當 CD 到 0 且身上沒有藥水時發放
execute if score #global ddy_state matches 2 as @a[tag=ddy_assassin,scores={ddy_cd1=..1}] unless entity @s[nbt={Inventory:[{tag:{ddy_item:2b,item_id:1b}}]}] run function doomsday:profession_bringer/assassin/give_item2

# 道具三判定
execute as @a[tag=ddy_assassin,scores={ddy_use_item=1..,ddy_damage=150..},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run function doomsday:profession_bringer/assassin/use_item3
#當使用道具三時ddy_damage未達150 tellraw @s {"text":"造成傷害量不足150無法使用暗影斬!","color":"red"}
execute as @a[tag=ddy_assassin,scores={ddy_use_item=1..,ddy_damage=..149},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run tellraw @s {"text":"造成傷害量不足150無法使用暗影斬!","color":"red"}

execute as @e[tag=ddy_assassin,scores={ddy_cd2=0}] run function doomsday:profession_bringer/assassin/give_item3




#witch


#武器1判定
execute as @a[tag=ddy_witch,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_weapon:1b,item_id:1b}}}] at @s anchored eyes run function doomsday:profession_bringer/witch/use_weapon1
#武器2判定
execute as @a[tag=ddy_witch,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_weapon:2b,item_id:1b}}}] at @s anchored eyes run function doomsday:profession_bringer/witch/use_weapon2

#技能一判定

execute as @a[tag=ddy_witch,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:1b,item_id:1b}}}] at @s anchored eyes run function doomsday:profession_bringer/witch/use_item1


#給予二技能
execute if score #global ddy_state matches 2 as @a[tag=ddy_witch,scores={ddy_cd1=..1}] unless entity @s[nbt={Inventory:[{tag:{ddy_item:2b,item_id:1b}}]}] run function doomsday:profession_bringer/witch/give_item2



#技能三判定
execute as @a[tag=ddy_witch,scores={ddy_use_item=1..,ddy_witch_tag_count=..29},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run tellraw @s {"text":"標記次數不足30無法使用蠱術”天眼”!","color":"red"}

execute as @a[tag=ddy_witch,scores={ddy_use_item=1..,ddy_witch_tag_count=30..},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] at @s anchored eyes run function doomsday:profession_bringer/witch/use_item3
execute as @a[tag=ddy_witch,scores={ddy_use_item=1..,ddy_witch_tag_count=30..},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run scoreboard players remove @s ddy_witch_tag_count 30

#dead tag
scoreboard players add @a[tag=ddy_witch_dead_tag,team=ddy_guard] ddy_witch_dead_tag 1
tellraw @a[tag=ddy_witch_dead_tag,team=ddy_guard] {"text":"你已被標上了死亡標記，擁有三次立即死亡！","color":"dark_red"}
playsound minecraft:entity.witch.hurt master @a[tag=ddy_witch_dead_tag] ~ ~ ~ 1 0.5
tag @a[tag=ddy_witch_dead_tag] remove ddy_witch_dead_tag



#執行死亡標記
execute as @a[scores={ddy_witch_dead_tag=3..}] run kill @s
execute as @a[scores={ddy_witch_dead_tag=3..}] run scoreboard players set @s ddy_witch_dead_tag 0



#ember guard

# 道具ㄧ判定

execute as @a[tag=ddy_ember_guard,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:1b,item_id:1b}}}] run function doomsday:profession_guard/ember_guard/use_item1

#給予二技能
execute if score #global ddy_state matches 2 as @a[tag=ddy_ember_guard,scores={ddy_cd1=..1}] unless entity @s[nbt={Inventory:[{tag:{ddy_item:2b}}]}] run function doomsday:profession_guard/ember_guard/give_item2


# 道具二判定
execute as @a[tag=ddy_ember_guard,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:2b,item_id:1b}}}] run function doomsday:profession_guard/ember_guard/use_item2

# 道具三判定
execute as @a[tag=ddy_ember_guard,scores={ddy_use_item=1..,ddy_open_chest=40..},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run function doomsday:profession_guard/ember_guard/use_item3

execute as @a[tag=ddy_ember_guard,scores={ddy_use_item=1..,ddy_open_chest=..39},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run tellraw @s {"text":"開箱次數不足無法使用!","color":"red"}



#hero

# 道具ㄧ判定

execute as @a[tag=ddy_hero,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:1b,item_id:1b}}}] run function doomsday:profession_guard/hero/use_item1

#給予二技能
execute if score #global ddy_state matches 2 as @a[tag=ddy_hero,scores={ddy_cd1=..1}] unless entity @s[nbt={Inventory:[{tag:{ddy_item:2b}}]}] run function doomsday:profession_guard/hero/give_item2


# 道具二判定
execute as @a[tag=ddy_hero,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:2b,item_id:1b}}}] run function doomsday:profession_guard/hero/use_item2

# 道具三判定
execute as @a[tag=ddy_hero,scores={ddy_use_item=1..,ddy_open_chest=80..},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run function doomsday:profession_guard/hero/use_item3

execute as @a[tag=ddy_hero,scores={ddy_use_item=1..,ddy_open_chest=..79},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run tellraw @s {"text":"開箱次數不足無法使用!","color":"red"}

execute if score #global ddy_state matches 2 as @a[tag=ddy_hero] unless entity @s[nbt={Inventory:[{tag:{ddy_item:3b,item_id:1b}}]}] run function doomsday:profession_guard/hero/give_item3

#被動
execute as @a[tag=ddy_hero] run effect give @s slowness 1 0 false







#hunter

# 道具ㄧ判定

execute as @a[tag=ddy_hunter,scores={ddy_use_item=1..},nbt={SelectedItem:{tag:{ddy_item:1b,item_id:1b}}}] run function doomsday:profession_guard/hunter/use_item1

#給予二技能
execute if score #global ddy_state matches 2 as @a[tag=ddy_hunter,scores={ddy_cd1=..1}] unless entity @s[nbt={Inventory:[{tag:{ddy_item:2b}}]}] run function doomsday:profession_guard/hunter/give_item2

# 道具二判定

execute as @e[tag=ddy_hunter_skill2] at @s run tellraw @p[tag=!be_catch,distance=..1,scores={ddy_number=1..},tag=!ddy_hunter] {"text":"你踩到了捕獸夾,持續跳躍逃脫","color":"red"}
execute as @e[tag=ddy_hunter_skill2,scores={ddy_number=1..},tag=!ddy_hunter] at @s run tag @a[distance=..1,tag=!be_catch] add be_catch
execute as @a[tag=be_catch,scores={ddy_cd2=..0,ddy_number=1..},tag=!ddy_hunter] run function doomsday:profession_guard/hunter/use_item2



# 道具三給予
execute as @a[tag=ddy_hunter,scores={ddy_use_item=1..,ddy_open_chest=30..},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run function doomsday:profession_guard/hunter/use_item3

execute as @a[tag=ddy_hunter,scores={ddy_use_item=1..,ddy_open_chest=..29},nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run tellraw @s {"text":"開箱次數不足無法使用!","color":"red"}

execute if score #global ddy_state matches 2 as @a[tag=ddy_hunter] unless entity @s[nbt={Inventory:[{tag:{ddy_item:3b,item_id:1b}}]}] run function doomsday:profession_guard/hunter/give_item3



# 道具三判定
    




# cd
scoreboard players remove @a[scores={ddy_cd1=1..},nbt=!{Inventory:[{tag:{ddy_item:2b}}]}] ddy_cd1 1
scoreboard players remove @a[scores={ddy_cd2=1..}] ddy_cd2 1

# 重置右鍵分數
scoreboard players set @a ddy_use_item 0


scoreboard players set @a[tag=!be_catch] ddy_jump_count 0

scoreboard players set @a ddY_damage_instant 0