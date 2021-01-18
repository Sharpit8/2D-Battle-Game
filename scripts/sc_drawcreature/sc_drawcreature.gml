

var symboldraw=0
while ds_list_size(symbollist)>symboldraw
{
draw_sprite(ds_list_find_value(symbollist,symboldraw),0,x+80+(symboldraw*32),y-draw_hp_height+55+6)

if instance_place(x+80+(symboldraw*32),y-draw_hp_height+55+6,o_mouse)
{


if ds_list_find_value(symbollist,symboldraw)=s_Defence
{
draw_set_color(c_black)
draw_rectangle(mouse_x,mouse_y,mouse_x+300,mouse_y-100,c_black)
draw_set_color(c_white)
draw_set_font(fo_level)
draw_text_ext(mouse_x,mouse_y-100,"Defence is increased, Current Defence is blocking: " + string(defence div 1) + "% of physical damage",20,300)
draw_set_color(c_black)
}

if ds_list_find_value(symbollist,symboldraw)=s_regeneration
{
draw_set_color(c_black)
draw_rectangle(mouse_x,mouse_y,mouse_x+300,mouse_y-100,c_black)
draw_set_color(c_white)
draw_set_font(fo_level)
draw_text_ext(mouse_x,mouse_y-100,"This creature is regenerating 12% of its health per second, seconds left: " + string((regeneration/60) div 1),20,300)
draw_set_color(c_black)
}

}
symboldraw=symboldraw+1
}





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

if powerselect>0
{flashwhite=flashwhite-0.05
	
	shader_set(sh_white)
sh_alpha=shader_get_uniform(sh_white, "_alpha")
shader_set_uniform_f(sh_alpha,powerselect)
draw_self()
shader_reset()
powerselect=0
}

if redhp > hp 
{redhp = redhp - (redhp - hp)/10}

if redhp < hp 
{redhp = hp}





