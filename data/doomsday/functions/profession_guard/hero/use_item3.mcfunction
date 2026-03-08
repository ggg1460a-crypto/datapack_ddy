#獲得耐久度1的聖劍，可直接斬殺一人
give @p golden_sword{ddy_item:3b,item_id:1b,display:{Name:'{"text":"聖劍","color":"gold","italic":false,"bold":true}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:999,Operation:0,UUID:[I;1,2,3,4],Slot:"mainhand"}],Damage:31} 1
clear @s carrot_on_a_stick{ddy_item:3b,item_id:1b}
scoreboard players remove @s ddy_open_chest 80
