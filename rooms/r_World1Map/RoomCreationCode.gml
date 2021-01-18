window_set_fullscreen(true)
window_set_cursor(cr_none)
cursor_sprite=cr_none

audio_pause_sound(so_menumusic)
audio_pause_sound(so_battlemusic1)
audio_pause_sound(so_battlemusic11)
audio_pause_sound(so_battlemusic)
audio_pause_sound(so_forestbattlesong)

if !audio_is_paused(so_forestsong)
{audio_play_sound(so_forestsong,0,1)}

if audio_is_paused(so_forestsong)
{audio_resume_sound(so_forestsong)}





