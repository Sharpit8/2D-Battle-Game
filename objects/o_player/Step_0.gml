if hp<=0
{instance_destroy()}

if global.speedup=1 and speedonce=1
{image_speed=image_speed/2 speedonce=2}

if global.speedup=2 and speedonce=2
{ image_speed=image_speed*2 speedonce=1}

if mouse_check_button_released(mb_right)
{instance_create_layer(mouse_x,mouse_y,"medium_creature",o_laserchanger)}

if keyboard_check_pressed(ord("L"))
{instance_create_layer(mouse_x,mouse_y,"medium_creature",o_goblin_A)}

audio_emitter_position(myEmitter,x,y,0)