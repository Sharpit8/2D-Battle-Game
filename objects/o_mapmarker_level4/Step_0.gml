if global.level=4.3
{audio_play_sound(so_levelwinworld1,1,0) global.level=4.4 }

if global.level=4
{timer=timer-1}
if global.level=4 and timer<=0 
{ visible=1 instance_create_layer(x,y,"Instances",o_partuleeffectmaker) stoptimer=stoptimer-1 global.level=4.1 }

if global.level>4.1
{sprite_index=s_world1mapmarkerdone}
