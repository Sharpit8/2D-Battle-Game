if states=states.goblinboss_attack
{	sc_attackreset() 
	
		if team=1 and !instance_place(x+range,y,parent_E)
{states=states.goblinboss_walk}

		if team=-1 and !instance_place(x-range,y,parent_A)
{states=states.goblinboss_walk}


}

if states=states.goblinboss_spawn and sprite_index=s_goblinboss_spawn
{	sc_attackreset()  spawntimer=150
states=states.goblinboss_walk

}

