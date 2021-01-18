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

if (floor(image_index)>=17) and (floor(image_index)<=33)
{move=7}
else
{move=0}

if mode="walk"
{if instance_place(x+range*team,y,parent_A)
{instance_place_list(x+range*team,y,parent_A,enemylist,1)
var listlengh=ds_list_size(enemylist)
var list=0
while listlengh>list
{var enemy=ds_list_find_value(enemylist,list)
if instance_exists(enemy) 
{if enemy.canattack=1 and enemy.team!=team
	{move=0}
}
	list=list+1
}
ds_list_clear(enemylist)}}

if team=1
{image_xscale=1}

if team=-1
{image_xscale=-1}

if team=-1
{x=x-move}

if team=1
{x=x+move}



}

if mode="attack"
{
	if createattackonce=0
{image_index=0 sprite_index=sprite_attack createattackonce=1}

	
	if hp<=0
{instance_destroy()}

if instance_place(x+250*team,y,parent_A)
{instance_place_list(x+250*team,y,parent_A,enemylist,1)
var listlengh=ds_list_size(enemylist)
var list=0
while listlengh>list
{enemy1=ds_list_find_value(enemylist,list)
if instance_exists(enemy1) 
{if enemy1.canattack=1 and enemy1.team!=team and enemy1.base=1
	{ mode="capture" list=listlengh

		
	
	}
}
	list=list+1
}
ds_list_clear(enemylist)}

}






if hp<=0
{instance_destroy()}

if charge >= chargemax and chargeonce = 0
{chargetimer = chargetimermax chargeonce = 1
 hp=hp+10 defence=defence+50}
	
if chargetimer >= 0
{chargetimer=chargetimer-1}

if chargetimer = 0
{chargeonce=0 charge=0 defence=defence-50}

if hp>hpmax
{hp=hpmax}


if mode="capture"
{hp=hpmax
depth=2
	if createcaptureonce=0
{image_index=0 sprite_index=s_minic_chest_capture_capture createcaptureonce=1 audio_play_sound(so_capture,2,0)}	

if (floor(image_index)>=107) and captureonce=0
{captureonce=1
	
	
with instance_create_depth(x,y,0,enemy1.me)
{visible=0 team=-1 leveluptolevel=1 levelgoto=other.enemy1.level sc_levelup()
slot=array_height_2d(global.CreatureStorage)

if other.enemy1.me = o_goblin_A
{
global.CreatureStorage[slot,0]=other.enemy1.me //creature
global.CreatureStorage[slot,1]=100 //x
global.CreatureStorage[slot,2]=100 //y
global.CreatureStorage[slot,3]=hpmax //maxhp
global.CreatureStorage[slot,4]=damage //damage
global.CreatureStorage[slot,5]=move //move
global.CreatureStorage[slot,6]=range //range
global.CreatureStorage[slot,7]=chargeadd //chargeradd
global.CreatureStorage[slot,8]=chargetimermax //chargertimermax
global.CreatureStorage[slot,9]=defence //defence
global.CreatureStorage[slot,10]=name //name
global.CreatureStorage[slot,11]=cooldownmax //cooldownmax
global.CreatureStorage[slot,12]=price //price
global.CreatureStorage[slot,13]=level //level
global.CreatureStorage[slot,14]=0 //Exp
global.CreatureStorage[slot,15]=s_goblin_spawnicon //Menu Sprite
global.CreatureStorage[slot,16]=attackspeed //attackspeed
global.CreatureStorage[slot,17]=spdefence //spdefence
global.CreatureStorage[slot,18]=spawnwhere //spdefence
global.CreatureStorage[slot,19]=0 //relic slot 1
global.CreatureStorage[slot,20]=0 //relic slot 2
global.CreatureStorage[slot,21]=spdamage
other.slot=slot
}


if other.enemy1.me = o_boglin_A
{
global.CreatureStorage[slot,0]=other.enemy1.me //creature
global.CreatureStorage[slot,1]=100 //x
global.CreatureStorage[slot,2]=100 //y
global.CreatureStorage[slot,3]=hpmax //maxhp
global.CreatureStorage[slot,4]=damage //damage
global.CreatureStorage[slot,5]=move //move
global.CreatureStorage[slot,6]=range //range
global.CreatureStorage[slot,7]=chargeadd //chargeradd
global.CreatureStorage[slot,8]=chargetimermax //chargertimermax
global.CreatureStorage[slot,9]=defence //defence
global.CreatureStorage[slot,10]=name //name
global.CreatureStorage[slot,11]=cooldownmax //cooldownmax
global.CreatureStorage[slot,12]=price //price
global.CreatureStorage[slot,13]=level //level
global.CreatureStorage[slot,14]=0 //Exp
global.CreatureStorage[slot,15]=s_boglin_menuicon //Menu Sprite
global.CreatureStorage[slot,16]=attackspeed //attackspeed
global.CreatureStorage[slot,17]=spdefence //spdefence
global.CreatureStorage[slot,18]=spawnwhere //spdefence
global.CreatureStorage[slot,19]=0 //relic slot 1
global.CreatureStorage[slot,20]=0 //relic slot 2
global.CreatureStorage[slot,21]=spdamage
other.slot=slot
}

instance_destroy()

with other.enemy1
{instance_destroy()}
	
	
	}

}
	
	
	
}



	