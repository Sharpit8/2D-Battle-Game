if createonce1=0
{createonce1=1 sc_allcreature_createafter()}


if powerup=1
{powerup=0               
	image_speed=image_speed*1.5
	damage=damage*1.5
	move=move*1.5
	flashwhite=1
	}

sc_allcreature()

if mode = "walk"
{
	sprite_index=sprite_walk

if team=1
{image_xscale=1}

if team=-1
{image_xscale=-1}

if team=-1
{x=x-move}

if team=1
{x=x+move}

if instance_place(x+range*team,y,parent_A)
{instance_place_list(x+range*team,y,parent_A,enemylist,1)
var listlengh=ds_list_size(enemylist)
var list=0
while listlengh>list
{var enemy=ds_list_find_value(enemylist,list)
if instance_exists(enemy) 
{if enemy.canattack=1 and enemy.team!=team
	{mode="attack"}
}
	list=list+1
}
ds_list_clear(enemylist)}

}

if mode="attack"
{
	if createattackonce=0
{image_index=0 sprite_index=sprite_attack createattackonce=1}

if (floor(image_index)>=attackframe) and attackonce=0
{attackonce=1 charge = charge + chargeadd
 with instance_create_depth(x+(range-50)*team,y,depth,o_goblin_attackbox_A)
	{sc_adddamage() physicaldamage=1}
	}	
	
	if hp<=0
{instance_destroy()}
}






if hp<=0
{instance_destroy()}

if charge >= chargemax and chargeonce = 0
{chargetimer = chargetimermax chargeonce = 1
 hp=hp+10 defence=defence+50 audio_play_sound_on(myEmitter,so_goblin_armorup,0,1)}
	
if chargetimer >= 0
{chargetimer=chargetimer-1}

if chargetimer = 0
{chargeonce=0 charge=0 defence=defence-50}

if hp>hpmax
{hp=hpmax}




	