if !instance_exists(mainobject) 
{instance_destroy()}
if instance_exists(mainobject) 
{if once=0
{once=1 
}

if mainobject.posion<=0
{instance_destroy()}

x=mainobject.x
y=mainobject.y
}


if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}