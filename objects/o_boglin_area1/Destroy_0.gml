
//global.axegoblin=1
//global.level=1.1
//global.new=1
global.goto=r_World1Map
global.levelupscreen=1
//global.roomtrans=1
//instance_create_layer(x,y,"above_all",o_room_transition_in)

if global.slot1!=o_noone
{with instance_create_layer(x,y,"spawn_icon",o_particules_Exp)
{Exp=other.Exp target=instance_nearest(o_camera.x-680,y+200,parent_spawner)}}

if global.slot2!=o_noone
{with instance_create_layer(x,y,"spawn_icon",o_particules_Exp)
{Exp=other.Exp target=instance_nearest(o_camera.x-480,y+200,parent_spawner)}}

if global.slot3!=o_noone
{with instance_create_layer(x,y,"spawn_icon",o_particules_Exp)
{Exp=other.Exp target=instance_nearest(o_camera.x-280,y+200,parent_spawner)}}

if global.slot4!=o_noone
{with instance_create_layer(x,y,"spawn_icon",o_particules_Exp)
{Exp=other.Exp target=instance_nearest(o_camera.x-80,y+200,parent_spawner)}}

if global.slot5!=o_noone
{with instance_create_layer(x,y,"spawn_icon",o_particules_Exp)
{Exp=other.Exp target=instance_nearest(o_camera.x+120,y+200,parent_spawner)}}


with instance_create_layer(x,y,"spawn_icon",o_particules_Exp_mouse)
{Exp=other.Exp target=o_mouse}

with instance_create_layer(x,y,"spawn_icon",o_particules_Exp_mouse)
{Exp=other.Exp target=o_mouse}


