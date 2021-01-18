if createattackonce=0
{image_index=0 sprite_index=s_goblinaxe_attackpowerup createattackonce=1}

if (floor(image_index)>=5) and attackonce=0 and team=1
{attackonce=1 with instance_create_depth(x,y,0,o_goblin_attackbox_A)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=5) and attackonce=0 and team=-1
{attackonce=1 with instance_create_depth(x,y,0,o_goblin_attackbox_E)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=13) and attackonce2=0 and team=1
{attackonce2=1 with instance_create_depth(x,y,0,o_goblin_attackbox_A)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=13) and attackonce2=0 and team=-1
{attackonce2=1 with instance_create_depth(x,y,0,o_goblin_attackbox_E)
	{sc_adddamage()}
	}
	
		if (floor(image_index)>=23) and attackonce3=0 and team=1
{attackonce3=1 with instance_create_depth(x,y,0,o_goblin_attackbox_A)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=23) and attackonce3=0 and team=-1
{attackonce3=1 with instance_create_depth(x,y,0,o_goblin_attackbox_E)
	{sc_adddamage()}
	}
	
	
	if hp<=0
{states=states.goblinaxe_knockback}