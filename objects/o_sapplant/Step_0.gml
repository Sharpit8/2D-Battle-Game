if instance_place(x+130*image_xscale,y,o_sapdroplet) 
{image_speed=0}
else
{image_speed=1}

if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}