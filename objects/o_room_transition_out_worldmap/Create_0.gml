if instance_exists(o_Camera_WrldMap)
{camera=instance_nearest(x,y,o_Camera_WrldMap)}


y=camera.y
x=camera.x

x = clamp(x,camera.view_w_half+camera.buff,room_width-camera.view_w_half-camera.buff)
y = clamp(y,camera.view_h_half+camera.buff,room_height-camera.view_h_half-camera.buff)

if global.roomtrans=1
{instance_destroy()}

if !instance_exists(o_Camera_WrldMap)
{x=room_width/2 y=room_height/2}

