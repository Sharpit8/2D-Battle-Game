if createattackonce=0
{image_index=0 sprite_index=sprite_attack createattackonce=1}

if (floor(image_index)>=44) and attackonce=0 and team=1
{attackonce=1 with instance_create_depth(x+50,y-100,0,o_speargoblin_attackbox_A)
	{sc_adddamage()}
	}
	
	if (floor(image_index)>=44) and attackonce=0 and team=-1
{attackonce=1 with instance_create_depth(x+50,y-100,0,o_speargoblin_attackbox_E)
	{sc_adddamage()}
	}
	
	if hp<=0
{instance_destroy()}
	
	

		
		
		
		