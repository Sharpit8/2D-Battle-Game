cooldown=cooldown-1
if instance_place(x,y,o_WrdMapPlayer) and once=0 
{once=1	
var randomnum = irandom_range(1,100)
image_index=1
if cooldown<=0
{audio_play_sound(so_grassopen,0,0)}
if randomnum <= 10 and !instance_exists(o_room_transition_in_worldmap) and !instance_exists(o_room_transition_out_worldmap) and cooldown<=0
{

if instance_exists(o_WrdMapPlayer)
{o_WrdMapPlayer.movement_speed=0}
	
var random_=irandom_range(1,100)

if random_<50
{global.goto=r_world1_level1}

if random_>=50
{global.goto=r_world1_boglin}
global.roomtrans=1
instance_create_layer(x,y,"above_all",o_room_transition_in_worldmap)
audio_pause_sound(so_battlemusic1)
audio_pause_sound(so_battlemusic11)
audio_pause_sound(so_battlemusic)
audio_pause_sound(so_forestsong)
audio_play_sound(so_forestbattlesong,0,true)
}

}


if !instance_place(x,y,o_WrdMapPlayer)
{once=0 image_index=0}