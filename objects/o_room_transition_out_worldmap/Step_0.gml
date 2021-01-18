if instance_exists(o_Camera_WrldMap)
{x=camera.x
	y=camera.y
	
x = clamp(x,camera.view_w_half+camera.buff,room_width-camera.view_w_half-camera.buff)
y = clamp(y,camera.view_h_half+camera.buff,room_height-camera.view_h_half-camera.buff)
}