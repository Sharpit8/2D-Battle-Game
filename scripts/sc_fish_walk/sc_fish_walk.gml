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
{states=states.fish_attack}

if team=-1 and instance_place(x-range,y,parent_A)
{states=states.fish_attack}

if hp<=0
{instance_destroy()}