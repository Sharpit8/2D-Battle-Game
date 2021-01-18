if global.speedup=1 and cooldown<=0 and global.levelupscreen=0
{global.speedup=2 cooldown=5 game_set_speed(60, gamespeed_fps) audio_play_sound(so_speedup,0,0)}



if global.speedup=2 and cooldown<=0 and global.levelupscreen=0
{global.speedup=1 cooldown=5 game_set_speed(30, gamespeed_fps) audio_play_sound(so_speeddown,0,0)}

