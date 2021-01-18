if global.money>=price and cooldown<=0 and global.canspawn=1 and !instance_exists(o_cage)
{cooldown=cooldownmax global.money=global.money-price with instance_create_layer(0,random_range(700-120,700),layer_,spawn)
	{}
}