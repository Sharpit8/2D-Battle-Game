if hp<=0
{instance_destroy()}

timer=timer-1

if timer<=50 and spawnonce2=0
{spawnonce2=1 instance_create_layer(room_width,670,layer__,o_goblin_E) }

if timer<=20 and spawnonce1=0
{spawnonce1=1 instance_create_layer(room_width,770,layer_,o_boggoblin_E) }




if timer<=10 and spawnonce=0
{spawnonce=1 instance_create_layer(room_width,770,layer__,o_boggoblin_E) }

if timer<=0
{spawnonce=0 spawnonce2=0 spawnonce1=0 timer=400 instance_create_layer(room_width,770,layer__,o_boggoblin_E) }

if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}

