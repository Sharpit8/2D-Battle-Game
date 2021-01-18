sprite_index=sprite_walk

if team=1
{image_xscale=1}

if team=-1
{image_xscale=-1}

if team=-1
{x=x-move}

if team=1
{x=x+move}

if team=1 and instance_place(x+range,y,parent_E)
{states=states.goblinboss_attack}

if team=-1 and instance_place(x-range,y,parent_A)
{states=states.goblinboss_attack}

if hp<=0
{instance_destroy()}
spawntimer=spawntimer-1
if spawntimer<=0
{states=states.goblinboss_spawn sc_attackreset()}