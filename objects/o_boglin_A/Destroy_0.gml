with instance_create_depth(x,y,depth,o_creature_death)
{sprite_knockback=other.sprite_knockback team=other.team}

audio_stop_sound(pukesound)
audio_play_sound_on(myEmitter,deathsound,0,1)
