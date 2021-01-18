



switch (states)
{
	case states.shieldgoblin_walk: sc_shieldgoblin_walk(); break;
	case states.shieldgoblin_attack: sc_shieldgoblin_attack(); break;
	case states.shieldgoblin_knockback: sc_shieldgoblin_knockback(); break;

}
if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}


