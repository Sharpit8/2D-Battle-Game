if once=0
{once=1 mainobject=instance_nearest(x,y,o_camera)}

x=mainobject.x

timer=timer-1
if !instance_exists(o_particules_Exp) and !instance_exists(o_particules_Exp_mouse) and timer<=0 and global.levelupscreen=1
{
instance_place_list(x,y,parent_spawner,enemylist,1)
var listlengh=ds_list_size(enemylist)
var list=0
while listlengh>list
{var enemy=ds_list_find_value(enemylist,list)
if instance_exists(enemy) 
{if enemy.Exp=global.CreatureStorage[enemy.slot,14]
	{clicktocontinue=1 timer=10}
	else
	{clicktocontinue=0 }
}
	list=list+1
}
ds_list_clear(enemylist)}
