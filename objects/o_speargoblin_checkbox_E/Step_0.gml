x=mainobject.x-(sprite_width/2)
y=mainobject.y


if instance_place(x,y,parent_A)
{mainobject.attack=1}

if !instance_place(x,y,parent_A)
{mainobject.attack=0}