if states=states.goblin_attack
{	sc_attackreset() 
		if team=1 and !instance_place(x+range,y,parent_E)
{states=states.goblin_walk}

		if team=-1 and !instance_place(x-range,y,parent_A)
{states=states.goblin_walk}
}