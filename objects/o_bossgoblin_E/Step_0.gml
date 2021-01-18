if angryonce=0 and hp<=450
{angryonce=1
	image_speed=image_speed*2
	move=move*2
	
	}


switch (states)
{
	case states.goblinboss_walk: sc_goblinboss_walk(); break;
	case states.goblinboss_attack: sc_goblinboss_attack(); break;
	case states.goblinboss_spawn: sc_goblinboss_spawn(); break;
	case states.goblinboss_knockback: sc_goblinboss_knockback(); break;

}
sc_allcreature()

