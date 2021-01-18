global.stopright=0
spawn=o_speargoblin_equip_follow
me=o_spawn_speargoblinicon

if global.slot1=me or global.slot2=me or global.slot3=me or global.slot4=me or global.slot5=me
{instance_create_layer(x,y,"troops_1",spawn)}

if global.speargoblin=0
{instance_destroy()}
	


