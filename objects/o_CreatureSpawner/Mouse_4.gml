if global.money>=price and cooldown<=0 and global.canspawn=1
{depth_=random_range(spawnwhere-120,spawnwhere) cooldown=cooldownmax global.money=global.money-price with instance_create_layer(0,depth_,"medium_creature",spawn)
	{sc_createstats()
		}
	
	with instance_create_layer(-100,depth_+1,"medium_creature",o_spawnerminic)
	{image_index=107}

}