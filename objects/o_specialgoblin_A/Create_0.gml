sc_allcreature_createbefore()


hp=150
damage=20 
move=7
sprite_walk=s_specialgoblin_walk
sprite_attack=s_specialgoblin_attack
sprite_knockback=s_specialgoblin_knockback
team=1
range=40
attacktime=12
states=states.specialgoblin_walk
hitbox=o_goblin_attackbox_A

if global.specialgoblindemon=1
{sprite_walk=s_specialgoblindemon_walk
sprite_attack=s_specialgoblindemon_attack
sprite_knockback=s_specialgoblindemon_knockback
range=150
hp=250
damage=60
y=y-80
move=4
hitbox=o_demongoblin_attackbox_A
attacktime=18}



sc_allcreature_createafter()