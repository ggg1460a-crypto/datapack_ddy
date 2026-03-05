summon marker ~ ~ ~ {Tags:["ddy_chest"]}


setblock ~ ~ ~ chest{Lock:"§9餘燼之鑰",LootTable:"doomsday:my_chest"} destroy
summon slime ~ ~ ~ {ActiveEffects:[{Id:24,Amplifier:0,Duration:999999,ShowParticles:0b}],NoAI:1b,Size:0}

kill @e[tag=ddy_chest_set]
