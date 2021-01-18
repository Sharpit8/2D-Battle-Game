if mode="walk" and walkonce=1
{
image_speed=image_speed/attackimagespeed
image_speed=image_speed*moveimagespeed  walkonce=2
}

if mode="attack" and walkonce=2
{
image_speed=image_speed/moveimagespeed
image_speed=image_speed*attackimagespeed walkonce=1
}



if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}

audio_emitter_position(myEmitter,x,y,0)


if regeneration>0 and hp!=hpmax
{regeneration=regeneration-1
hp=hp+(hpmax*0.002)}

if regenerationonce=0 and regeneration>0 
{regenerationonce=1 ds_list_add(symbollist,s_regeneration)}

if regeneration<=0 and regenerationonce=1
{regenerationonce=0 ds_list_delete(symbollist,ds_list_find_index(symbollist,s_regeneration))} 


if posion>=0
{
	if poisononce=0
	{poisononce=1 posiontimer=30
		with instance_create_depth(x,y,depth-1,o_posion)
		{mainobject=other.id}
	}
	
	if posiontimer<=0
	{hp=hp-10 posiontimer=30 audio_play_sound(so_hit,0,0)
flash=1}
	posiontimer=posiontimer-1
	posion=posion-1
}

if posion<0
{poisononce=0}

if hp<=0 and mushroompoison=1
{mushroompoison=0 instance_create_layer(x,670,"medium_creature",o_mushroom_spawner)}


