if other.team=1 and done=0
{other.team=-1 done=1}

if other.team=-1 and done=0
{other.team=1 done=1}

audio_play_sound(so_knightvoice,0,0)

instance_destroy()