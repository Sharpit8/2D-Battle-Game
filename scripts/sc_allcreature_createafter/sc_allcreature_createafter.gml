hp = hpmax
redhp = hp
walkonce=1
audio_play_sound(soundspawn,0,0)

moveimagespeed=move/originalmove
attackimagespeed=attackspeed/100


if mode="walk"
{image_speed=image_speed*attackimagespeed walkonce=1}

if mode="attack"
{image_speed=image_speed*moveimagespeed walkonce=2}


if global.speedup=1
{speedonce=2}

if global.speedup=2
{speedonce=1}


if global.speedup=2
{image_speed=image_speed*2}


if global.CreatureStorage[slot,19]!=0 and spawned=1
{script_execute(global.CreatureStorage[slot,19])}

if global.CreatureStorage[slot,20]!=0 and spawned=1
{script_execute(global.CreatureStorage[slot,20])}


