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
{states=states.specialgoblin_attack}

if team=-1 and instance_place(x-range,y,parent_A)
{states=states.specialgoblin_attack}

if hp<=0
{states=states.specialgoblin_knockback}