if mode="attack"
{	sc_attackreset() 
if instance_place(x+range*team,y,parent_A)
{instance_place_list(x+range*team,y,parent_A,enemylist,1)
var listlengh=ds_list_size(enemylist)
var list=0
while listlengh>list
{mode="walk" var enemy=ds_list_find_value(enemylist,list)
if instance_exists(enemy) 
{if enemy.canattack=1 and enemy.team!=team
	{mode="attack"}
}
	list=list+1
}
ds_list_clear(enemylist)}
else
{mode="walk"}
}


if mode="walk"
{if instance_place(x+range*team,y,parent_A)
{instance_place_list(x+range*team,y,parent_A,enemylist,1)
var listlengh=ds_list_size(enemylist)
var list=0
while listlengh>list
{var enemy=ds_list_find_value(enemylist,list)
if instance_exists(enemy) 
{if enemy.canattack=1 and enemy.team!=team
	{mode="attack"}
}
	list=list+1
}
ds_list_clear(enemylist)}}

if mode="capture"
{
	
mode="walk"

captureshow=1
audio_pause_sound(so_capture)
	
	
}