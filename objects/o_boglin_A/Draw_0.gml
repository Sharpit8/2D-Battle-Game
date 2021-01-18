if createonce1=0
{createonce1=1 sc_allcreature_createafter()}


draw_sprite_ext(s_shadow, 0 , x, y+200, 2, 1.3, 0, c_white,0.3)
draw_self()
sc_drawcreature()

if charger=1
{ var color_ = make_colour_rgb(230, 230, 230)
	draw_rectangle(x-65,y-draw_hp_height+36,x+65,y-draw_hp_height+45+5,c_black)
	draw_healthbar(x-60,y-draw_hp_height+40,x+60,y-draw_hp_height+40+5,charge/chargemax*100,c_black,color_,c_white,-1,1,1)}

draw_rectangle(x-85,y-draw_hp_height+15,x+85,y-draw_hp_height+25+15,c_black)
draw_healthbar(x-80,y-draw_hp_height+20,x+80,y-draw_hp_height+20+15,redhp/hpmax*100,c_black,c_red,c_red,1,1,0)
draw_healthbar(x-80,y-draw_hp_height+20,x+80,y-draw_hp_height+20+15,hp/hpmax*100,c_black,c_green,c_lime,1,0,1)



	
