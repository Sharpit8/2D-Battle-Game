draw_set_alpha(1)
draw_self()
draw_set_font(font1)
draw_set_color(c_black)



draw_text(x-55,y+9,price)
draw_set_alpha(0.5)
if cooldown>0
{draw_rectangle_color(x-78,y+68,x+78,y-((cooldown*0.46)-70),0,0,0,0,0)}
draw_set_alpha(1)

if global.money<price
{
	
	shader_set(sh_black)
sh_alpha=shader_get_uniform(sh_black, "_alpha")
shader_set_uniform_f(sh_alpha,cooldown)
draw_self()
shader_reset()

}

if powerselect>0
{
	
	shader_set(sh_white)
sh_alpha=shader_get_uniform(sh_white, "_alpha")
shader_set_uniform_f(sh_alpha,powerselect)
draw_self()
shader_reset()
powerselect=0
}