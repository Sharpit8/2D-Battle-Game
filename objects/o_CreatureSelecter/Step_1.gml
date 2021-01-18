if createonce=0
{createonce=1


spawn=global.CreatureStorage[slot,0] //creature
x=global.CreatureStorage[slot,1] //x

if slot!=global.slot1 and slot!=global.slot2 and slot!=global.slot3 and slot!=global.slot4 and slot!=global.slot5 
{y=global.CreatureStorage[slot,2]} //y

hpmax=global.CreatureStorage[slot,3] //maxhp
damage=global.CreatureStorage[slot,4] //damage
move=global.CreatureStorage[slot,5] //move
range=global.CreatureStorage[slot,6] //range
chargeradd=global.CreatureStorage[slot,7] //chargeradd
chargertimermax=global.CreatureStorage[slot,8] //chargertimermax
defence=global.CreatureStorage[slot,9] //defence
name=global.CreatureStorage[slot,10] //name
cooldownmax=global.CreatureStorage[slot,11] //cooldownmax
price=global.CreatureStorage[slot,12] //price
level=global.CreatureStorage[slot,13] //level
Exp=global.CreatureStorage[slot,14] //Exp
sprite_index=global.CreatureStorage[slot,15] //Menu Sprite
attackspeed=global.CreatureStorage[slot,16] //attackspeed
global.CreatureStorage[slot,19]=0
global.CreatureStorage[slot,20]=0

	
}


if once2123=0
{if global.slot1=slot 
{
x=o_equipslot1.x
y=o_equipslot1.y
}

if global.slot2=slot 
{
x=o_equipslot2.x
y=o_equipslot1.y
}

if global.slot3=slot 
{
x=o_equipslot3.x
y=o_equipslot1.y
}

if global.slot4=slot 
{
x=o_equipslot4.x
y=o_equipslot1.y
}

if global.slot5=slot 
{
x=o_equipslot5.x
y=o_equipslot1.y
}
once2123=1
}