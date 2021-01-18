if createattackonce=0
{image_index=0 sprite_index=sprite_attack createattackonce=1}

if (floor(image_index)>=12) and attackonce=0 and team=1
{attackonce=1 with instance_create_depth(x+100,y,0,o_fish_attackbox_A)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=12) and attackonce=0 and team=-1
{attackonce=1 with instance_create_depth(x-100,y,0,o_fish_attackbox_E)
	{sc_adddamage()}
	}
	
	if hp<=0
{instance_destroy()}
	
	

		
		
		
		