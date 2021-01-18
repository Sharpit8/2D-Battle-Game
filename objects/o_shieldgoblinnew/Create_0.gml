done=0

if global.shieldgoblin=1
{global.shieldgoblin=1.1 done=1}

if done=0
{instance_destroy()}
timer=30

mainobject=instance_nearest(x,y,o_shieldgoblin_equip)