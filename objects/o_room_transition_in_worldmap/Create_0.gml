if instance_exists(o_Camera_WrldMap)
{camera=instance_nearest(x,y,o_Camera_WrldMap)}
y=camera.y
if global.roomtrans=0
{instance_destroy()}

if !instance_exists(o_Camera_WrldMap)
{x=room_width/2 y=room_height/2}