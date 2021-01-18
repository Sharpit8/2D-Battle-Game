



if room=r_equip_troops
{
	
if select=1
{x=mouse_x y=mouse_y}

if !instance_place(x,y,o_equipslot1) and !instance_place(x,y,o_equipslot2) and !instance_place(x,y,o_equipslot3) and !instance_place(x,y,o_equipslot4) and !instance_place(x,y,o_equipslot5)
{move_snap(154,140)}

}


if global.slot1=slot 
{
x=o_equipslot1.x
}

if global.slot2=slot 
{
x=o_equipslot2.x
}

if global.slot3=slot 
{
x=o_equipslot3.x
}

if global.slot4=slot 
{
x=o_equipslot4.x
}

if global.slot5=slot 
{
x=o_equipslot5.x
}

if mouse_check_button_released(mb_left)
{
	select=0

if !instance_place(x,y,parent_equip)
{
if instance_place(x,y,o_equipslot1)
{global.slot1=slot x=o_equipslot1.x y=o_equipslot1.y}

if instance_place(x,y,o_equipslot2)
{global.slot2=slot x=o_equipslot2.x y=o_equipslot2.y}

if instance_place(x,y,o_equipslot3)
{global.slot3=slot x=o_equipslot3.x y=o_equipslot3.y}

if instance_place(x,y,o_equipslot4)
{global.slot4=slot x=o_equipslot4.x y=o_equipslot4.y}

if instance_place(x,y,o_equipslot5)
{global.slot5=slot x=o_equipslot5.x y=o_equipslot5.y}
}


if instance_place(x,y,parent_equip) or instance_place(x,y,o_relic_table)
{x=global.CreatureStorage[slot,1]
y=global.CreatureStorage[slot,2]}
else
{global.CreatureStorage[slot,1]=x
global.CreatureStorage[slot,2]=y}

}

spawntimer1=spawntimer1-1
if !instance_place(x-55,y-48,o_relic) and global.CreatureStorage[slot,20]!=0 and spawntimer1<=0
{global.CreatureStorage[slot,20]=0}

if !instance_place(x-55,y-13,o_relic) and global.CreatureStorage[slot,19]!=0 and spawntimer1<=0
{global.CreatureStorage[slot,19]=0}