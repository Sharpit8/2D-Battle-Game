timer=timer-1

x=x-1
y=y+2

if timer=40
{ with instance_create_depth(x,y,0,o_mushroom_attackbox_E)
	{sc_adddamage()}
}

if timer=20
{ with instance_create_depth(x,y,0,o_mushroom_attackbox_E)
	{sc_adddamage()}
}
	

if timer=0
{ with instance_create_depth(x,y,0,o_mushroom_attackbox_E)
	{sc_adddamage()}
}


if timer=0
{instance_destroy()}
	