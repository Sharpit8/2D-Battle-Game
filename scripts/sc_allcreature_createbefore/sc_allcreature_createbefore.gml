attackonce=0
createattackonce=0
knocktimer=30
attackonce2=0
attackonce3=0
powerup=0
flash=0
flashwhite=0
powerselect=0
powercooldown=600
posion=-1
posiondamage=0
posiononce=0
poisononce=0
posiontimer=0
mushroompoison=0
mushroompoisondamage=0
charge=0
charger=0
chargeadd = 0
chargemax = 100
defence = 0
chargetimer = -23
chargetimermax = 0
canattack=1
enemylist=ds_list_create()
spdamage=0
spdefence=0
move=0
originalmove=0
attackimagespeed=1
modelast=0
attackspeed=100
mode="walk"
walkonce=1
soundhit=so_hit
soundspawn=so_noone
deathsound=so_noone
leveluptolevel=0
level=1
Exp=0
slot=0
ExpToLevelUp=0
hpmax=0
levelgoto=0
base=0
name=0
regeneration=0
regenerationonce=0
draw_hp_height=200
damage=0
spawned=0
spdamage=0
chargeradd=0
chargertimermax=0
cooldownmax=0
price=100

symbollist=ds_list_create()
ds_list_clear(symbollist)

myEmitter=audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_falloff(myEmitter,500,1920,1)




