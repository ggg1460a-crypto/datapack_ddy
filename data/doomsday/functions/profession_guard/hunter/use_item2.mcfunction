tp @s @e[tag=ddy_hunter_skill2,limit=1,sort=nearest]
execute if score @s ddy_jump_count matches 5.. run kill @e[tag=ddy_hunter_skill2,limit=1,sort=nearest]
execute if score @s ddy_jump_count matches 5.. run tag @s remove be_catch
scoreboard players set @s ddy_cd2 5
