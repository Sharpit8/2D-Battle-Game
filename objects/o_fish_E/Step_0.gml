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
	case states.fish_walk: sc_fish_walk(); break;
	case states.fish_attack: sc_fish_attack(); break;
	case states.fish_knockback: sc_fish_knockback(); break;

}

