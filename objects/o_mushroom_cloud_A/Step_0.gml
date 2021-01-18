timer=timer-1

x=x+1
y=y+2

if timer=40
{ with instance_create_depth(x,y,0,o_mushroom_attackbox_A)
	{sc_adddamage()}
}

if timer=20
{ with instance_create_depth(x,y,0,o_mushroom_attackbox_A)
	{sc_adddamage()}
}
	

if timer=0
{ with instance_create_depth(x,y,0,o_mushroom_attackbox_A)
	{sc_adddamage()}
}


if timer=0
{instance_destroy()}

if mushroompoisondamage=1
{with instance_create_layer(x,y,"particules",o_particules)
{sprite_index=s_particules_mushroom}}
	