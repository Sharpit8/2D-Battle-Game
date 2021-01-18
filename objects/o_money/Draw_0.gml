draw_self()
draw_set_font(font0)
draw_set_color(c_black)


if global.money<10
{draw_text(x+320,y-80,global.money)
draw_text(x+340,y-80,"/")
draw_text(x+350,y-80,moneymax)
draw_sprite(s_smallmoney,0,x+420,y-80)}

if global.money<100 and global.money>=10
{draw_text(x+320,y-80,global.money)
draw_text(x+350,y-80,"/")
draw_text(x+360,y-80,moneymax)
draw_sprite(s_smallmoney,0,x+420,y-80)}

if global.money<1000 and global.money>=100
{draw_text(x+320,y-80,global.money)
draw_text(x+370,y-80,"/")
draw_text(x+380,y-80,moneymax)
draw_sprite(s_smallmoney,0,x+440,y-80)}

if global.money<10000 and global.money>=1000
{draw_text(x+320,y-80,global.money)
draw_text(x+390,y-80,"/")
draw_text(x+400,y-80,moneymax)
draw_sprite(s_smallmoney,0,x+460,y-80)}



draw_set_alpha(1)

draw_set_font(font1)
draw_set_color(c_black)



draw_text(x-55,y+9,price)


if price!="max"
{if global.money<price 
{
	
	shader_set(sh_black)
sh_alpha=shader_get_uniform(sh_black, "_alpha")
shader_set_uniform_f(sh_alpha,sh_alpha)
draw_self()
shader_reset()

}}