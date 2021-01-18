x=mainobject.x+520

cooldown=cooldown-1
if instance_exists(o_cage) or global.canbecaptured=0
{cooldown=cooldownmax}