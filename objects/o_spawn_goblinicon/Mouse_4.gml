if global.money>=price and cooldown<=0 and global.canspawn=1
{cooldown=cooldownmax global.money=global.money-price with instance_create_layer(0,random_range(560,680),layer_,spawn)
	{}
}