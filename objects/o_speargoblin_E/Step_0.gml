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
	case states.speargoblin_walk: sc_speargoblin_walk(); break;
	case states.speargoblin_attack: sc_speargoblin_attack(); break;
	case states.speargoblin_knockback: sc_speargoblin_knockback(); break;

}

