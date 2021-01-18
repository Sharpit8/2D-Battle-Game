if instance_place(x+1140,y,o_camerastop)
{moveleft=0}
else
{moveleft=1}

if instance_place(x-1140,y,o_camerastop)
{moveright=0}
else
{moveright=1}


audio_listener_position(x,y,0)
audio_emitter_position(global.mainEmitterlevel,x,y,0)

if (instance_exists(follow))
{
	xTo = follow.x
	yTo = follow.y
}

x = x + (xTo - x) / 2
y = y + (yTo - y) / 2

x = clamp(x,view_w_half+buff,room_width-view_w_half-buff)
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff)

//screen shake
x += random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude))




camera_set_view_pos(cam,x-view_w_half,y-view_h_half)

if layer_exists("ForestBackground")
{
 layer_x("ForestBackground",x/12)
}

if layer_exists("ForestBackground_1")
{
 layer_x("ForestBackground_1",x/6)
}

if layer_exists("ForestBackground_2")
{
 layer_x("ForestBackground_2",x/3)
}


if layer_exists("cavebackground1")
{
 layer_x("cavebackground1",x/12)
}

if layer_exists("back")
{
 layer_x("back",x/2)
}

