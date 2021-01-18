if states=states.mushroom_attack
{	sc_attackreset() 
	

		if team=1 and !instance_place(x+range,y,parent_E)
{states=states.mushroom_walk}

		if team=-1 and !instance_place(x-range,y,parent_A)
{states=states.mushroom_walk}
}