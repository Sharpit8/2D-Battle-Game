draw_self()

draw_set_color(c_black)

draw_set_font(fo_level)
draw_text(x+35,y-65,"lvl:")
draw_text(x+55,y-65,global.CreatureStorage[slot,13])

draw_set_font(font1)
draw_text(x-55,y+9,price)

draw_sprite(s_relic_slot,0,x-55,y-48)
draw_sprite(s_relic_slot,0,x-55,y-13)