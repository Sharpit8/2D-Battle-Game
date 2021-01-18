if createonce=0
{createonce=1
x=o_camera.x+global.RelicStorage[slot,0]
y=global.RelicStorage[slot,1]	
xlast=x
ylast=y
global.RelicStorage[slot,0]=x-o_camera.x
if select=0
{if instance_place(x,y,o_CreatureSelecter)
{selecter=instance_place(x,y,o_CreatureSelecter)}}



	}
	





if selecter!=0
{canpush=0}
else
{canpush=1}





if select=1 and selecter=0
{selecteronce=0

if mouse_check_button_released(mb_left) and instance_place(x,y,o_CreatureSelecter) and !instance_place(x,y,o_relic_table)
{select=0 global.RelicStorage[slot,0]=x-o_camera.x ylast=y}

if mouse_check_button_released(mb_left) and instance_place(x,y,o_relic_table)
{select=0 global.RelicStorage[slot,0]=x-o_camera.x ylast=y}




selecteronce=0
selecterrelicslot=0

x=mouse_x
y=mouse_y





if mouse_check_button_released(mb_left) and !instance_place(x,y,o_relic_table) and !instance_place(x,y,o_CreatureSelecter)
{select=0 
x=o_camera.x+global.RelicStorage[slot,0]
y=ylast
selecteronce=0
xlast=x
ylast=y
}

gap=x-o_camera.x

if select=0
{if instance_place(x,y,o_CreatureSelecter) and !instance_place(x,y,o_relic_table)
{selecter=instance_place(x,y,o_CreatureSelecter)}}

if !instance_place(x,y,o_CreatureSelecter) and instance_place(x,y,o_relic_table) and mouse_check_button_released(mb_left) or instance_place(x,y,o_relic) and !instance_place(x,y,o_CreatureSelecter)
{
x=o_camera.x+global.RelicStorage[slot,0]
selecteronce=0
}
}



if selecter!=0
{
with selecter
{
if global.CreatureStorage[slot,19]=0 and other.selecteronce=0
{other.selecteronce=1 other.x=x-55 other.y=y-48 other.selecterrelicslot=1 global.CreatureStorage[slot,19]=other.script}

if global.CreatureStorage[slot,20]=0 and other.selecteronce=0
{other.selecteronce=1 other.x=x-55 other.y=y-13 other.selecterrelicslot=2 global.CreatureStorage[slot,20]=other.script}
}

if selecteronce=0
{select=0 
x=o_camera.x+global.RelicStorage[slot,0]
y=ylast
selecteronce=0
xlast=x
ylast=y}

if selecterrelicslot=1
{x=selecter.x-55 y=selecter.y-48}

if selecterrelicslot=2
{x=selecter.x-55 y=selecter.y-13}
global.RelicStorage[slot,0]=x-o_camera.x
ylast=y
}




if instance_place(x,y,o_relic_table)
{move_snap(50,50)}

while instance_place(x,y,o_relic) and !instance_place(x,y,o_CreatureSelecter)
{
x=x+50
if x>o_relic_table.x+100
{x=o_relic_table.x-140 y=y+50}


xlast=x

global.RelicStorage[slot,0]=x-o_camera.x
}

if instance_place(x,y,o_relic_table)
{move_snap(50,50)}

if select=0 and selecter=0
{x=o_camera.x+global.RelicStorage[slot,0]}



global.RelicStorage[slot,1]=y


if instance_place(x,y,o_mouse)
{mouseon=1}
else
{mouseon=0}









