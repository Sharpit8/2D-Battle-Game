if powerup=1
{powerup=0               
	sc_attackreset() 
	states=states.speargoblin_powerup
	}

sc_allcreature()


switch (states)
{
	case states.speargoblin_walk: sc_speargoblin_walk(); break;
	case states.speargoblin_attack: sc_speargoblin_attack(); break;
	case states.speargoblin_knockback: sc_speargoblin_knockback(); break;
	case states.speargoblin_powerup: sc_speargoblin_powerup(); break;

}

