if o_relic_table.out=0
{if global.slot1!=o_noone or global.slot2!=o_noone or global.slot3!=o_noone or global.slot4!=o_noone or global.slot5!=o_noone 
{room_goto(r_World1Map)}}

if o_relic_table.out=1
{o_relic_table.out=0 o_relic_table.goout=1  o_relic_table.gap=o_relic_table.gap+400
	with o_relic
	{if !instance_place(x,y,o_CreatureSelecter)
		{global.RelicStorage[slot,0]=global.RelicStorage[slot,0]-400}}
	
	}
	
	
	if o_relic_table.out=0
{if global.slot1!=o_noone or global.slot2!=o_noone or global.slot3!=o_noone or global.slot4!=o_noone or global.slot5!=o_noone 
{room_goto(r_World1Map)}}