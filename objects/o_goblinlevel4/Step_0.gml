if hp<=0
{instance_destroy()}

timer=timer-1

if timer<=60 and spawnonce=0
{spawnonce=1 instance_create_layer(room_width,670,layer_,o_shieldgoblin_E) }

if timer<=0
{spawnonce=0 timer=450 instance_create_layer(room_width,644,layer_,o_speargoblin_E) }


if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}
