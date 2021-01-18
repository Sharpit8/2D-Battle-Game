with instance_create_layer(x,y,"medium_creature",o_knockback)
{sprite_knockback=other.sprite_knockback team=other.team}


global.level=5.3

global.goto=r_world1
global.roomtrans=1
instance_create_layer(x,y,"above_all",o_room_transition_in)