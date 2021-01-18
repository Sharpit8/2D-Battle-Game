if global.level=5.3
{audio_play_sound(so_levelwinworld1,1,0) global.level=5.4 }

if global.level=5
{timer=timer-1}
if global.level=5 and timer<=0 
{ visible=1 instance_create_layer(x,y,"Instances",o_partuleeffectmaker) stoptimer=stoptimer-1 global.level=5.1 }

if global.level>5.1
{sprite_index=s_world1mapmarkerdone}
