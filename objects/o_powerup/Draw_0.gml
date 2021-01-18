draw_self()
if flash>0
{flash=flash-0.5
	
	shader_set(sh_flash)
sh_alpha=shader_get_uniform(sh_flash, "_alpha")
shader_set_uniform_f(sh_alpha,0.5)
draw_self()
shader_reset()}

draw_set_alpha(0.5)
if cooldown>0
{draw_rectangle_color(mainobject.x-78+553,1060,mainobject.x+78+546,1060-((cooldown*coolpercent)),0,0,0,0,0)}
draw_set_alpha(1)

if cooldown>0
{
	
	shader_set(sh_black)
sh_alpha=shader_get_uniform(sh_black, "_alpha")
shader_set_uniform_f(sh_alpha,cooldown)
draw_self()
shader_reset()

}

