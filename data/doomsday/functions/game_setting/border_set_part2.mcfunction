kill @e[tag=ddy_center]
summon marker ~ ~ ~ {Tags:["ddy_center"]}
data get entity @e[tag=ddy_center,limit=1,sort= nearest] Pos
kill @e[tag=ddy_border_set]