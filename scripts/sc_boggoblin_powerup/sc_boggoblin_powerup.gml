if hp<=0
{instance_destroy()}

sprite_index=s_boggoblin_call

if (floor(image_index)>=22) and attackonce4=0 and team=1
{attackonce4=1 audio_play_sound(so_bogcreature_call,0,0)
	
	}


if (floor(image_index)>=30) and attackonce=0 and team=1
{attackonce=1  instance_create_layer(0,770,"small_creature",o_boggoblin_A)
	
	}
	
	if (floor(image_index)>=40) and attackonce2=0 and team=1
{attackonce2=1  instance_create_layer(0,770,"small_creature",o_boggoblin_A)
	
	}
	
	
		if (floor(image_index)>=50) and attackonce3=0 and team=1
{attackonce3=1  instance_create_layer(0,770,"small_creature",o_boggoblin_A)
	
	}