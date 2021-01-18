if createonce=0
{createonce=1


spawn=global.CreatureStorage[slot,0] //creature
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
spdefence=global.CreatureStorage[slot,17] //spdefence
ExpToLevelUp=global.CreatureStorage[slot,13]*10
spawnwhere=global.CreatureStorage[slot,18] //spdefence
spdamage=global.CreatureStorage[slot,21]


cooldown=cooldownmax
layer_="medium_creature"
powerselect=0
hp=hpmax


	
}




if global.slot1=slot
{x=mainobject.x-680}

if global.slot2=slot
{x=mainobject.x-480}

if global.slot3=slot
{x=mainobject.x-280}

if global.slot4=slot
{x=mainobject.x-80}

if global.slot5=slot
{x=mainobject.x+120}

cooldown=cooldown-1

if global.levelupscreen=1
{sc_levelup()}