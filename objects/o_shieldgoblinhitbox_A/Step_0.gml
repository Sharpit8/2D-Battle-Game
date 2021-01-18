sc_allcreature()

if !instance_exists(mainobject)
{instance_destroy()}
if instance_exists(mainobject)
{if once=0
{once=1 hplast=hp}

if once2=0 and !instance_exists(shield)
{hp=150 once2=1 hplast=hp}


if hplast!=hp and !instance_exists(shield)
{ mainobject.flash=1 mainobject.hp=other.hp hplast=hp}

if hplast!=hp and instance_exists(shield)
{shield.shield=1 shield.image_index=0 shield.flash=1 shield.hp=hp hplast=hp}


if powerselect=1
{mainobject.powerselect=1}


if powerselect=1 and instance_exists(shield)
{shield.powerselect=1}

powerselect=0





x=mainobject.x
y=mainobject.y}

if powerup=1
{powerup=0
	if instance_exists(shield)
	{shield.sprite_walk=s_shieldgoblin_shieldpowerup_walk
		shield.sprite_attack=s_shieldgoblin_shieldpowerup_attack
				shield.sprite_shield=s_shieldgoblin_shieldpowerup_shield
				hp=300 hplast=hp}

	if !instance_exists(shield)
	{with instance_create_layer(x,y,"medium_creature",o_shieldgoblinshield_A)
{mainobject=other.mainobject.id  depth=other.mainobject.depth+1 team=other.mainobject.team 
	sprite_walk=s_shieldgoblin_shieldpowerup_walk
		sprite_attack=s_shieldgoblin_shieldpowerup_attack
				sprite_shield=s_shieldgoblin_shieldpowerup_shield
				other.hp=300 other.hplast=other.hp other.shield=id}
		
		
		
	}


}



if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=1.5}

if global.speedup=1.5 and speedonce=1.5
{image_speed=image_speed*1.5 speedonce=2}


if global.speedup=2 and speedonce=2
{image_speed=image_speed/1.5 image_speed=image_speed*2 speedonce=1}