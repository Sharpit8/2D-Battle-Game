
instance_place_list(x,y,parent_A,enemylist,true)
var listlengh=ds_list_size(enemylist)
var list=0
while listlengh>list
{ enemy=ds_list_find_value(enemylist,list)
if instance_exists(enemy) 
{if enemy.canattack=1 and enemy.team!=team and hitonce=0
	{hitonce=1 sc_dodamage()}
}
	list=list+1
}
ds_list_clear(enemylist)

