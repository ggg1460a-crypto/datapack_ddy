effect give @s glowing 999 0 true
execute as @p[tag=ddy_witch,nbt={SelectedItem:{tag:{ddy_item:3b,item_id:1b}}}] run scoreboard players set @s ddy_witch_tag_count 0
kill @e[tag=ddy_witch_skill3,sort=nearest,limit=1]