if select=0
{x=mainobject.x
y=mainobject.y}
if select=1
{timer=timer-1
	
	if instance_place(x,y,o_mouse) and timer<=0 and xonce=0
	{xonce=1   with instance_create_layer(x+62,y-55,"x",o_smallx)
		{other.x_=id }	
		
		
	
	
	
	}
	
}

	if !instance_place(x,y,o_mouse)  and instance_exists(x_)
		{xonce=0  with x_
			{instance_destroy()}
		}



if global.slot1=me
{
x=508 y=993
}

if global.slot2=me
{
x=719 y=997
}

if global.slot3=me
{
x=922 y=997
}

if global.slot4=me
{
x=1132 y=997
}

if global.slot5=me
{
x=1336 y=997
}