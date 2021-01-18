draw_self()
if smallobject.cooldown>0
{
	
	shader_set(sh_black)
sh_alpha=shader_get_uniform(sh_black, "_alpha")
shader_set_uniform_f(sh_alpha,smallobject.cooldown)
draw_self()
shader_reset()

}