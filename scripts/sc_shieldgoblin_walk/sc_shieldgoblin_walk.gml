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
{states=states.shieldgoblin_attack}

if team=-1 and instance_place(x-range,y,parent_A)
{states=states.shieldgoblin_attack}

if hp<=0
{instance_destroy()}

attack=0