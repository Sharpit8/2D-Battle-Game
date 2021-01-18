sc_allcreature_createbefore()


hp=40
damage=50 //18DPS
move=4
sprite_walk=s_speargoblin_walk
sprite_attack=s_speargoblin_attack
sprite_knockback=s_speargoblin_knockback
team=-1
range=1
powercooldown=300
attack=0
states=states.speargoblin_walk


with instance_create_depth(x,y,0,o_speargoblin_checkbox_E)
{mainobject=other.id other.smallobject=id}


sc_allcreature_createafter()