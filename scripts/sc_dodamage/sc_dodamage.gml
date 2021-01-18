


instance_destroy()
with (enemy)
{var def = defence
var spdef = spdefence
if defence>95
{def=95}

if spdefence>95
{spdef=95}
	
	if other.physicaldamage=1
	{hp=hp-(other.damage-(other.damage*(def/100)))}
	if  other.specialdamage=1
	{hp=hp-(other.spdamage-(other.spdamage*(spdef/100)))}
	
	posion=posion+other.posiondamage 
    if other.mushroompoisondamage=1
	{mushroompoison=other.mushroompoisondamage}
audio_play_sound_on(myEmitter,soundhit,0,1)
with instance_create_layer(x,y,"particules",o_particules)
{spawn=10}
flash=1
hitonce=1}
