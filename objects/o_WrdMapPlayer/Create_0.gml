myEmitter=audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_falloff(myEmitter,100,1920/2,0.2)

image_index = 0;
image_speed = 1;

x=global.playerx
y=global.playery


key_up = vk_up
key_down = vk_down
key_left = vk_left
key_right = vk_right

key_up_alt = ord("W")
key_down_alt = ord("S")
key_left_alt = ord("A")
key_right_alt = ord("D")

movement_speed = 7
facing_angle = 0

axis_x = 0
axis_y = 0
axis_x_max = movement_speed
axis_y_max = movement_speed

axis_x_acceleration = 4
axis_y_acceleration = 4
axis_x_reasitution = 1.3
axis_y_reasitution = 1.3

steponce=0
steponce1=0
footstepsound1=so_wetsfootstep1
footstepsound2=so_wetsfootstep2




