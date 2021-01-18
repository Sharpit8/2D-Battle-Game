voicesound = so_Goblin_Voice

msg = [
["Prince Chungus is waiting","Goblin",s_goblin_walk,voicesound],
["You shouldn't leave the mighty Prince Chungus waiting you know, he's a powerful guy, he could meet you on his terms instead of yours.","Goblin",s_goblin_walk,voicesound],
["Whats going on?","You",s_WorldMapPlayer_idle,so_playervoice],
["...","Goblin",s_goblin_walk,voicesound],
]


myEmitter=audio_emitter_create()
audio_falloff_set_model(audio_falloff_linear_distance_clamped)
audio_emitter_falloff(myEmitter,100,1920/2,1.4)
