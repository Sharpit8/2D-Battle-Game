sc_drawcreature()

if angryonce>0
{
	
	shader_set(sh_angry)
sh_alpha=shader_get_uniform(sh_angry, "_alpha")
shader_set_uniform_f(sh_alpha,angryonce)
draw_self()
shader_reset()

}