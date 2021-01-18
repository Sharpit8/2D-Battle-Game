draw_self()
draw_set_alpha(1)


draw_set_color(c_black)

draw_set_font(fo_level)
draw_text(x+35,y-65,"lvl:")
draw_text(x+55,y-65,global.CreatureStorage[slot,13])

draw_set_font(font1)
draw_text(x-55,y+9,price)
draw_set_alpha(0.5)
if cooldown>0
{draw_healthbar(x-76,y+70,x+76,y-70,cooldown/cooldownmax*100,c_black,c_black,c_black,2,false,false)}
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

if global.levelupscreen=1
{

var color_1 = make_colour_rgb(75, 0, 130)
var color_2 = make_colour_rgb(148,50,211)
	
draw_set_color(c_black)
draw_rectangle(x-75,y-115,x+75,y-505,c_black)
draw_set_color(c_white)
draw_rectangle(x-70,y-120,x+70,y-500,c_black)
draw_healthbar(x-70,y-90,x+70,y-110,Exp/ExpToLevelUp*100,c_black,color_1,color_2,0,1,1)
draw_set_color(c_black)
draw_set_font(fo_level)

if level!=global.CreatureStorage[slot,13]
{draw_set_color(c_green) draw_text(x+80,y-65,"+") draw_set_color(c_black) draw_text(x+90,y-65,global.CreatureStorage[slot,13]-level) }

//hp
draw_text(x-70,y-150,"hp:") draw_text(x+10,y-150,global.CreatureStorage[slot,3] div 1)
if hpmax<global.CreatureStorage[slot,3]
{draw_set_color(c_green) draw_text(x+40,y-150,"+") draw_text(x+50,y-150,(global.CreatureStorage[slot,3]-hpmax) div 1) draw_set_color(c_black)}

//damage
draw_text(x-70,y-170,"damage:") draw_text(x+10,y-170,global.CreatureStorage[slot,4] div 1)
if damage<global.CreatureStorage[slot,4]
{draw_set_color(c_green) draw_text(x+40,y-170,"+") draw_text(x+50,y-170,(global.CreatureStorage[slot,4]-damage) div 1) draw_set_color(c_black)}

//move
draw_text(x-70,y-190,"speed:") draw_text(x+10,y-190,global.CreatureStorage[slot,5] div 1)
if move<global.CreatureStorage[slot,5]
{draw_set_color(c_green) draw_text(x+40,y-190,"+") draw_text(x+50,y-190,(global.CreatureStorage[slot,5]-move) div 1) draw_set_color(c_black)}

//defence
draw_text(x-70,y-210,"defence:") draw_text(x+10,y-210,global.CreatureStorage[slot,9] div 1)
if defence<global.CreatureStorage[slot,9]
{draw_set_color(c_green) draw_text(x+40,y-210,"+") draw_text(x+50,y-210,(global.CreatureStorage[slot,9]-defence) div 1) draw_set_color(c_black)}

//spdefence
draw_text(x-70,y-230,"spdefence") draw_text(x+10,y-230,global.CreatureStorage[slot,17] div 1)
if spdefence<global.CreatureStorage[slot,17]
{draw_set_color(c_green) draw_text(x+40,y-230,"+") draw_text(x+50,y-230,(global.CreatureStorage[slot,17]-spdefence) div 1) draw_set_color(c_black)}

//attackspeed
draw_text(x-70,y-250,"attkspeed:") draw_text(x+10,y-250,global.CreatureStorage[slot,17] div 1)
if attackspeed<global.CreatureStorage[slot,17]
{draw_set_color(c_green) draw_text(x+40,y-250,"+") draw_text(x+50,y-250,(global.CreatureStorage[slot,17]-attackspeed) div 1) draw_set_color(c_black)}

//price
draw_text(x-70,y-270,"price:") draw_text(x+10,y-270,global.CreatureStorage[slot,12] div 1)
if price<global.CreatureStorage[slot,12]
{draw_set_color(c_green) draw_text(x+40,y-270,"+") draw_text(x+50,y-270,(global.CreatureStorage[slot,12]-price) div 1) draw_set_color(c_black)}

//cooldown
draw_text(x-70,y-290,"cooldown:") draw_text(x+10,y-290,global.CreatureStorage[slot,11] div 1)
if cooldownmax>global.CreatureStorage[slot,11]
{draw_set_color(c_green) draw_text(x+40,y-290,"-") draw_text(x+50,y-290,(cooldownmax-(global.CreatureStorage[slot,11])) div 1) draw_set_color(c_black)}

//spdamage
draw_text(x-70,y-310,"spdamage") draw_text(x+10,y-310,global.CreatureStorage[slot,21] div 1)
if spdamage<global.CreatureStorage[slot,21]
{draw_set_color(c_green) draw_text(x+40,y-310,"+") draw_text(x+50,y-310,((global.CreatureStorage[slot,21]-spdamage)) div 1) draw_set_color(c_black)}


}

