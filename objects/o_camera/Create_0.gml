moveleft=1
moveright=1

//with instance_create_depth(x-960,y,0,o_cameramoveleft)
//{mainobject=other.id}

//with instance_create_depth(x+960,y,0,o_cameramoveright)
//{mainobject=other.id}

audio_listener_orientation(0,1,0,0,0,1)
global.mainEmitterlevel=audio_emitter_create()

cam = view_camera[0]
follow = o_camera
view_w_half = camera_get_view_width(cam) * 0.5
view_h_half = camera_get_view_height(cam) * 0.5
xTo = xstart
yTo = ystart
shake=0
shake1=0
shakeonce1=0
global.camerashake=0
shakeonce=0

shake_length = 0
shake_magnitude = 0
shake_remain = 0
buff = 32

