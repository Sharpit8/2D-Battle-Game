cooldown=cooldown-1

x=camera.x+870
y=camera.y+468

if global.speedup=1
{sprite_index=s_forward1}

if global.speedup=1.5
{sprite_index=s_forward11}

if global.speedup=2
{sprite_index=s_forward2}

if global.speedup=2 and global.levelupscreen=1
{global.speedup=1 game_set_speed(30, gamespeed_fps)}

