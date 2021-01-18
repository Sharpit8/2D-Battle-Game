
knocktimer=knocktimer-1




if team=1
{sprite_index=sprite_knockback image_xscale=1}

if team=-1
{sprite_index=sprite_knockback image_xscale=-1}


x=x-(6*team)

if 15<knocktimer and knocktimer<30
{y=y-1}

if knocktimer<15 and knocktimer>0
{y=y+1}

if hp<=0 and knocktimer<=0
{instance_destroy() instance_create_layer(x,y,"medium_creature",o_creature_death)}


if knocktimer<=0
{states=states.goblinboss_walk knocktimer=30 }