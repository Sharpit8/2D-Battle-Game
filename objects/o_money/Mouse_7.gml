if global.money>=price and upgrade = 1
{global.money=global.money-price upgrade=upgrade+1 moneymax = 600
cashgain = 20
price = 450 audio_play_sound(so_moneyupgrade,0,0) }

if global.money>=price and upgrade = 2
{ global.money=global.money-price upgrade=upgrade+1 moneymax = 1000
cashgain = 25
price = 800 audio_play_sound(so_moneyupgrade,0,0)}

if global.money>=price and upgrade = 3
{ global.money=global.money-price upgrade=upgrade+1 moneymax = 2000
cashgain = 30
price = 1500 audio_play_sound(so_moneyupgrade,0,0)}

if global.money>=price and upgrade = 4
{global.money=global.money-price upgrade=upgrade+1 moneymax = 4000
cashgain = 35
price = "max" audio_play_sound(so_moneyupgrade,0,0)}