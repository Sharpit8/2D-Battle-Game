done=0

if global.axegoblin=1
{global.axegoblin=1.1 done=1}

if done=0
{instance_destroy()}
timer=30

mainobject=instance_nearest(x,y,o_goblinaxe_equip)