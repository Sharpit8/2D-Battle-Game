


if shield=1
{states=states.shieldgoblinshield_shield}




switch (states)
{
	case states.shieldgoblinshield_walk: sc_shieldgoblinshield_walk(); break;
	case states.shieldgoblinshield_shield: sc_shieldgoblinshield_shield(); break;


}


x=mainobject.x
y=mainobject.y

if hp<=0
{instance_destroy()}

if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}
