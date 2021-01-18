if direction<=180
{direction=direction+1}

image_alpha=image_alpha-0.1
if image_alpha<=0
{instance_destroy()}
if direction<=90
{direction=direction-2}
direction=direction+5
if 300>direction and 240<direction
{direction=270}