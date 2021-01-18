if states=states.speargoblin_attack
{	sc_attackreset() 
		if team=1 and attack=0
{states=states.speargoblin_walk}

		if team=-1 and attack=0
{states=states.speargoblin_walk}
}


if states=states.speargoblin_powerup
{	sc_attackreset() 
		if team=1 
{states=states.speargoblin_walk}

		if team=-1 
{states=states.speargoblin_walk}
}


