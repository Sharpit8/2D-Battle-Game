sc_allcreature_createbefore()


hp=150
damage=60 //18DPS
move=4
sprite_walk=s_shieldgoblin_walk
sprite_attack=s_shieldgoblin_attack
sprite_knockback=s_shieldgoblin_knockback
team=1
range=80
attack=0
powercooldown=500
states=states.shieldgoblin_walk

with instance_create_layer(x,y,"medium_creature",o_shieldgoblinshield_A)
{depth=other.depth+1 team=other.team mainobject=other.id }


with instance_create_layer(x,y,"medium_creature",o_shieldgoblinhitbox_A)
{depth=other.depth+1 mainobject=other.id }


sc_allcreature_createafter()