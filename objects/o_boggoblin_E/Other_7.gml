if states=states.boggoblin_attack
{	sc_attackreset() 
		if team=1 and !instance_place(x+range,y,parent_E)
{states=states.boggoblin_walk}

		if team=-1 and !instance_place(x-range,y,parent_A)
{states=states.boggoblin_walk}
}