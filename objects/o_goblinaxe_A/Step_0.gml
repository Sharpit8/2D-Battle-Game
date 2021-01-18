if powerup=1
{powerup=0
	poweruptimer=3
	
	states=states.goblinaxe_powerup
	sc_attackreset()
	flashwhite=1
}

sc_allcreature()
switch (states)
{
	case states.goblinaxe_walk: sc_goblinaxe_walk(); break;
	case states.goblinaxe_attack: sc_goblinaxe_attack(); break;
	case states.goblinaxe_knockback: sc_goblinaxe_knockback(); break;
	case states.goblinaxe_powerup: sc_goblinaxe_powerup(); break;
}