done=0

if global.mushroom=1
{global.mushroom=1.1 done=1}

if done=0
{instance_destroy()}
timer=30

mainobject=instance_nearest(x,y,o_mushroom_equip)