if powerup=1
{powerup=0      
	
	mushroompoison1=1
	mushroompoisondamage=1
	posiondamage=100
	states=states.mushroom_attack
}

sc_allcreature()


switch (states)
{
	case states.mushroom_walk: sc_mushroom_walk(); break;
	case states.mushroom_attack: sc_mushroom_attack(); break;
	case states.mushroom_knockback: sc_mushroom_knockback(); break;

}

