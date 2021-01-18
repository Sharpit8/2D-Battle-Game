if states=states.goblinaxe_attack
{	sc_attackreset() 
		if team=1 and !instance_place(x+range,y,parent_E)
{states=states.goblinaxe_walk}

		if team=-1 and !instance_place(x-range,y,parent_A)
{states=states.goblinaxe_walk}
}