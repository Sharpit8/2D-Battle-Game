if states=states.fish_attack
{	sc_attackreset() 
		if team=1 and !instance_place(x+range,y,parent_E)
{states=states.fish_walk}

		if team=-1 and !instance_place(x-range,y,parent_A)
{states=states.fish_walk}
}