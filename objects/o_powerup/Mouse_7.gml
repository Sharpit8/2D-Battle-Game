select=0

if instance_place(x,y,creature) and instance_exists(target)
{ 
with target
{powerup=1}
cooldownmax=target.powercooldown
cooldown=cooldownmax

if cooldownmax=100
{coolpercent=1.38}

if cooldownmax=200
{coolpercent=0.69}

if cooldownmax=300
{coolpercent=0.46}

if cooldownmax=400
{coolpercent=0.345}

if cooldownmax=500
{coolpercent=0.276}

if cooldownmax=600
{coolpercent=0.23}

if cooldownmax=700
{coolpercent=0.19714285714}

if cooldownmax=800
{coolpercent=0.1725}

if cooldownmax=900
{coolpercent=0.15333333333}

if cooldownmax=1000
{coolpercent=0.138}








if cooldownmax=300
{coolpercent=0.15}

if cooldownmax=600
{coolpercent=0.23}




audio_play_sound(so_powerup,0,0)
}


if instance_place(x,y,parent_spawner)
{   thing=instance_place(x,y,parent_spawner)


if !instance_place(x,y,o_spawn_shieldgoblinicon)
	{creature=thing.spawn }
	
	if instance_place(x,y,o_spawn_shieldgoblinicon)
	{creature=o_shieldgoblinhitbox_A }

with thing
{
	
	
	
	
	other.sprite=sprite_index}
	
	
	
	
	}
	
	if !instance_place(x,y,parent_spawner) and !instance_place(x,y,creature)
{creature=parent_A sprite=s_backgroundpowerup    }