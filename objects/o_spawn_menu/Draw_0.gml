draw_self()


if clicktocontinue=1
{
draw_set_font(fo_clickTC)
draw_set_color(c_black)
draw_text(o_camera.x-300,o_camera.y-400,"Click To Continue")

if mouse_check_button_pressed(mb_left)
{global.roomtrans=1 global.levelupscreen=1
instance_create_layer(x,y,"above_all",o_room_transition_in)
}
}