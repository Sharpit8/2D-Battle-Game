if powerup=1
{powerup=0               
	image_speed=image_speed*1.5
	damage=damage*1.5
	move=move*1.5
	flashwhite=1
	}


sc_allcreature()

switch (states)
{
	case states.boggoblin_walk: sc_boggoblin_walk(); break;
	case states.boggoblin_attack: sc_boggoblin_attack(); break;
	case states.boggoblin_knockback: sc_boggoblin_knockback(); break;
		case states.boggoblin_powerup: sc_boggoblin_powerup(); break;

}

