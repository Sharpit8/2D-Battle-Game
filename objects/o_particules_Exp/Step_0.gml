
if (floor(image_index)>=9)
{image_speed=0}


while spawn>0
{spawn=spawn-1
	
	
	
with instance_create_depth(x,y,depth,o_particules)
{sprite_index=other.sprite_index}
	
}

rotatespeed=rotatespeed-0.1
image_angle=image_angle+rotatespeed

if place_meeting(x+hsp, y,object1)
 {     while !place_meeting(x+sign(hsp),y,object1)
	 x+=sign(hsp)
 }
	 else
{	 x+=hsp} 


if hsp>0
{hsp=hsp-0.3}

if hsp<0
{hsp=hsp+0.3}

if hsp<=2 and hsp>=-2
{hsp=0}


if vsp>0
{vsp=vsp-0.3}

if vsp<0
{vsp=vsp+0.3}

if vsp<=2 and vsp>=-2
{vsp=0}

if vsp = 0 and hsp = 0 and goingtarget=0
{goingtarget=1}

if goingtarget=1
{
speed=speed+0.8
direction=point_direction(x,y,target.x,target.y)


if instance_place(x,y,target)
{global.CreatureStorage[target.slot,14]=global.CreatureStorage[target.slot,14]+Exp instance_destroy()
with instance_create_layer(x,y,"particules",o_particules)
{spawn=40 sprite_index=s_particules_mushroom audio_play_sound(so_mushroomvoice,0,0)}
	
	}
	
}



if place_meeting(x, y+vsp,object1)
 {     while !place_meeting(x,y+sign(vsp),object1)
	 y+=sign(vsp)
 }
	 else
{	 y+=vsp} 


if hsp=0 and vsp=0
{deathtimer=60}

deathtimer=deathtimer-1

if deathtimer>=-20 
{image_alpha=deathtimer/90}

if image_alpha<=0
{instance_destroy()}