if createonce1=0
{createonce1=1 sc_allcreature_createafter()}


draw_sprite_ext(s_shadow, 0 , x, y+170, 3, 2.4, 0, c_white,0.3)
draw_self()
sc_drawcreature()

if charger=1
{ var color_ = make_colour_rgb(230, 230, 230)
	draw_rectangle(x-65,y-draw_hp_height+36,x+65,y-draw_hp_height+45+5,c_black)
	draw_healthbar(x-60,y-draw_hp_height+40,x+60,y-draw_hp_height+40+5,charge/chargemax*100,c_black,color_,c_white,-1,1,1)}

draw_rectangle(x-85,y-draw_hp_height+15,x+85,y-draw_hp_height+25+15,c_black)
draw_healthbar(x-80,y-draw_hp_height+20,x+80,y-draw_hp_height+20+15,redhp/hpmax*100,c_black,c_red,c_red,1,1,0)
draw_healthbar(x-80,y-draw_hp_height+20,x+80,y-draw_hp_height+20+15,hp/hpmax*100,c_black,c_green,c_lime,1,0,1)


if chargetimer >= 0
{ var color_ = make_colour_rgb(230, 230, 230)
	draw_rectangle(x-65,y-draw_hp_height+36,x+65,y-draw_hp_height+45+5,c_black)
	draw_healthbar(x-60,y-draw_hp_height+40,x+60,y-draw_hp_height+40+5,chargetimer/chargetimermax*100,c_black,color_,c_white,-1,1,1)
	draw_sprite(s_Defence,0,x+80,y-draw_hp_height+45+6)
	}
	
	
if captureshow=1
{
if instance_exists(o_camera)
{
draw_sprite(global.CreatureStorage[slot,15],0,o_camera.x,o_camera.y-125)
draw_set_color(c_black)
draw_set_font(fo_clickTC)
draw_text(o_camera.x-150,o_camera.y-275,"Captured")
draw_set_font(fo_level)
draw_text(o_camera.x+35,o_camera.y-190,"lvl:")
draw_text(o_camera.x+55,o_camera.y-190,global.CreatureStorage[slot,13])
}
}
	
