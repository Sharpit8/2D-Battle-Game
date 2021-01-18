if global.level=2.2
{audio_play_sound(so_levelwinworld1,1,0) global.level=2.3 }

if global.level=2
{timer=timer-1}
if global.level=2 and timer<=0 and stoptimer>=0
{ visible=1 instance_create_layer(x,y,"Instances",o_partuleeffectmaker) stoptimer=stoptimer-1 global.level=2.1 }

if global.level>2.1
{sprite_index=s_world1mapmarkerdone}


