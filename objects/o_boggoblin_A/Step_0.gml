if powerup=1
{powerup=0 powerselect=0         
	states=states.boggoblin_powerup
	image_index=0
	sc_attackreset()
	}

sc_allcreature()


switch (states)
{
	case states.boggoblin_walk: sc_boggoblin_walk(); break;
	case states.boggoblin_attack: sc_boggoblin_attack(); break;
	case states.boggoblin_knockback: sc_boggoblin_knockback(); break;
		case states.boggoblin_powerup: sc_boggoblin_powerup(); break;

}

