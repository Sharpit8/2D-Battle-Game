if hp<=0
{instance_destroy()}

timer=timer-1

if timer<=0 and spawn1=0
{timer=300 spawn1=1 with instance_create_layer(room_width,random_range(680-120,680),layer_,o_boglin_A) 
	{team=other.team leveluptolevel=1 levelgoto=other.level sc_levelup()}
	}

if timer<=0 and spawn1=1
{timer=300 spawn1=0 with instance_create_layer(room_width,random_range(680-120,680),layer_,o_boglin_A)
	{team=other.team leveluptolevel=1 levelgoto=other.level sc_levelup()}
	}

if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}

audio_emitter_position(myEmitter,x,y,0)

if instance_exists(o_cage) and hplast!=hp
{hp=hplast}