if createattackonce=0
{image_index=0 sprite_index=sprite_attack createattackonce=1}

if (floor(image_index)>=36) and attackonce=0 and team=1 
{attackonce=1 with instance_create_depth(x+50,y-130,-1,o_mushroom_cloud_A)
	{sc_adddamage() }
mushroompoisondamage=0 posiondamage=0
	}
	
	if (floor(image_index)>=36) and attackonce=0 and team=-1 
{attackonce=1 with instance_create_depth(x-50,y-130,-1,o_mushroom_cloud_E)
	{sc_adddamage() }
	}
	
	if hp<=0
{instance_destroy()}
	
	

		
		
		
		