if createattackonce=0
{image_index=0 sprite_index=sprite_attack createattackonce=1}

if (floor(image_index)>=49) and attackonce=0 and team=1
{attackonce=1 with instance_create_depth(x,y,0,o_goblin_attackbox_A)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=49) and attackonce=0 and team=-1
{attackonce=1 with instance_create_depth(x,y,0,o_goblin_attackbox_E)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=69) and attackonce2=0 and team=1
{attackonce2=1 with instance_create_depth(x,y,0,o_goblin_attackbox_A)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=69) and attackonce2=0 and team=-1
{attackonce2=1 with instance_create_depth(x,y,0,o_goblin_attackbox_E)
	{sc_adddamage()}
	}
if hp<=0
{instance_destroy()}
	spawntimer=spawntimer-1
if spawntimer<=0 and (floor(image_index)>=79)
{states=states.goblinboss_spawn sc_attackreset() }
	

		
		
		
		