sprite_index=sprite_walk

if team=1
{image_xscale=1}

if team=-1
{image_xscale=-1}

if team=-1
{x=x-move}

if team=1
{x=x+move}

if team=1 and attack=1
{states=states.speargoblin_attack}

if team=-1 and attack=1
{states=states.speargoblin_attack}

if hp<=0
{instance_destroy()}