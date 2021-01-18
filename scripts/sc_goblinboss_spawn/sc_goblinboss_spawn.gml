if createattackonce=0
{image_index=0 sprite_index=s_goblinboss_spawn createattackonce=1}

if (floor(image_index)>=19) and attackonce=0 and team=1
{attackonce=1 instance_create_layer(x-200,770,"medium_creature",o_boggoblin_A)
	
	}
	
	if (floor(image_index)>=19) and attackonce=0 and team=-1
{attackonce=1 instance_create_layer(x+200,770,"medium_creature",o_boggoblin_E)
	
	}
	

	
	if hp<=0
{instance_destroy()}
	
	

		
		
		
		