if global.level=6.2
{audio_play_sound(so_levelwinworld1,1,0) global.level=6.3 }

if global.level=6
{timer=timer-1}
if global.level=6 and timer<=0 
{ visible=1 instance_create_layer(x,y,"Instances",o_partuleeffectmaker) stoptimer=stoptimer-1 global.level=6.1 }

if global.level>6.1
{sprite_index=s_world1mapmarkerdone}
