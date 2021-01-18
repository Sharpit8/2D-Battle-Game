if instance_exists(o_camera)
{camera=instance_nearest(x,y,o_camera)}
y=room_height/2
if global.roomtrans=0
{instance_destroy()}

if !instance_exists(o_camera)
{x=room_width/2 y=room_height/2}