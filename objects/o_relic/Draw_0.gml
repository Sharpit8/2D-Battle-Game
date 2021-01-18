draw_self()

if mouseon=1
{
draw_set_color(c_black)
draw_rectangle(mouse_x,mouse_y,mouse_x+300,mouse_y-100,c_black)
draw_set_color(c_white)
draw_set_font(fo_level)
draw_text_ext(mouse_x,mouse_y-100,global.RelicStorage[slot,4],20,300)
draw_set_color(c_black)
}

