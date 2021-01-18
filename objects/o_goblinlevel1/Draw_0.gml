draw_sprite_ext(s_shadow, 0 , x, y+sprite_height/2, 2, 1.3, 0, c_white,0.3)
draw_self()
if flash>0
{flash=flash-0.1
	
	shader_set(sh_flash)
sh_alpha=shader_get_uniform(sh_flash, "_alpha")
shader_set_uniform_f(sh_alpha,flash)
draw_self()
shader_reset()}


if flashwhite>0
{flashwhite=flashwhite-0.05
	
	shader_set(sh_flashwhite)
sh_alpha=shader_get_uniform(sh_flashwhite, "_alpha")
shader_set_uniform_f(sh_alpha,flashwhite)
draw_self()
shader_reset()}

draw_set_color(c_black)
draw_set_font(font0)
draw_text(x-40,y-200,"Level:")
draw_text(x+30,y-200,level)