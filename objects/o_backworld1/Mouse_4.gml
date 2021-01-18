if o_relic_table.out=0
{if global.slot1!=o_noone or global.slot2!=o_noone or global.slot3!=o_noone or global.slot4!=o_noone or global.slot5!=o_noone 
{room_goto(r_World1Map)}}

if o_relic_table.out=1
{o_relic_table.out=0 o_relic_table.goout=1}