if Exp<global.CreatureStorage[slot,14] and leveluptolevel=0
{ Exp=Exp+global.CreatureStorage[slot,14]*global.CreatureStorage[slot,13]/(Exp+global.CreatureStorage[slot,14])
	
	audio_sound_pitch(so_levelbarfill,(Exp/ExpToLevelUp)*4+1)
	audio_play_sound(so_levelbarfill,0,0)

	}

if Exp>global.CreatureStorage[slot,14] and leveluptolevel=0
{Exp=global.CreatureStorage[slot,14]}

while Exp>=ExpToLevelUp and leveluptolevel=0 or leveluptolevel=1 and level!=levelgoto
{

if leveluptolevel=0
{with instance_create_layer(x,y-200,"particules",o_particules)
{spawn=40 sprite_index=s_particules_mushroom audio_play_sound(so_mushroomvoice,0,0)}}

if leveluptolevel=0
{global.CreatureStorage[slot,14]=global.CreatureStorage[slot,14]-ExpToLevelUp
Exp=Exp-ExpToLevelUp//Exp=Exp-ExpToLevelUp
global.CreatureStorage[slot,13]=global.CreatureStorage[slot,13]+1 //level=level+1
ExpToLevelUp=global.CreatureStorage[slot,13]*10}

if leveluptolevel=1
{level=level+1}

if spawn=o_goblin_A 
{
var maxhpadd=14
var damageadd=3
var defenceadd=0.5
var spdefenceadd=0.25
var cooldownmaxadd=0.25

if leveluptolevel=0
{global.CreatureStorage[slot,3]=global.CreatureStorage[slot,3]+maxhpadd //14 to maxhp
global.CreatureStorage[slot,4]=global.CreatureStorage[slot,4]+damageadd //3 to damage
global.CreatureStorage[slot,9]=global.CreatureStorage[slot,9]+defenceadd //0.5% to defence
global.CreatureStorage[slot,17]=global.CreatureStorage[slot,17]+spdefenceadd //0.25% to spdefence
global.CreatureStorage[slot,11]=global.CreatureStorage[slot,11]-cooldownmaxadd //0.25% to cooldown
}
if leveluptolevel=1
{
hpmax=hpmax+maxhpadd //14 to maxhp
damage=damage+damageadd //3 to damage
defence=defence+defenceadd //0.5% to defence
spdefence=spdefence+spdefenceadd //0.25% to spdefence
cooldownmax=cooldownmax-cooldownmaxadd //0.25% to cooldown
}
}


if spawn=o_boglin_A
{
var maxhpadd=4
var damageadd=2
var defenceadd=0.2
var spdefenceadd=0.2
var cooldownmaxadd=0.25
var moveadd=0.04
var attackspeedadd=0.03
var spattackadd=0.4

if leveluptolevel=0
{global.CreatureStorage[slot,3]=global.CreatureStorage[slot,3]+maxhpadd //14 to maxhp
global.CreatureStorage[slot,4]=global.CreatureStorage[slot,4]+damageadd //3 to damage
global.CreatureStorage[slot,9]=global.CreatureStorage[slot,9]+defenceadd //0.5% to defence
global.CreatureStorage[slot,17]=global.CreatureStorage[slot,17]+spdefenceadd //0.25% to spdefence
global.CreatureStorage[slot,11]=global.CreatureStorage[slot,11]-cooldownmaxadd //0.25% to cooldown
global.CreatureStorage[slot,5]=global.CreatureStorage[slot,5]+moveadd //0.25% to cooldown
global.CreatureStorage[slot,16]=global.CreatureStorage[slot,16]+attackspeedadd //0.25% to cooldown
global.CreatureStorage[slot,21]=global.CreatureStorage[slot,21]+spattackadd
}
if leveluptolevel=1
{
hpmax=hpmax+maxhpadd //14 to maxhp
damage=damage+damageadd //3 to damage
defence=defence+defenceadd //0.5% to defence
spdefence=spdefence+spdefenceadd //0.25% to spdefence
cooldownmax=cooldownmax-cooldownmaxadd //0.25% to cooldown
move=move+moveadd
attackspeed=attackspeed+attackspeedadd
spdamage=spdamage+spattackadd
}
}



}