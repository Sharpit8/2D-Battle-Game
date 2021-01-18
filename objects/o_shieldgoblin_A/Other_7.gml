if states=states.shieldgoblin_attack
{	sc_attackreset() 
		if team=1 and !instance_place(x+range,y,parent_E)
{states=states.shieldgoblin_walk}

		if team=-1 and !instance_place(x-range,y,parent_A)
{states=states.shieldgoblin_walk}
}