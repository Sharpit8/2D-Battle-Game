if !instance_place(x,y,parent_equip)
{
if instance_place(x,y,o_equipslot1) and done=0
{global.slot1=me slot=1 select=1 done=1}



if instance_place(x,y,o_equipslot2) and done=0
{global.slot2=me  slot=2 select=1 done=1}

if instance_place(x,y,o_equipslot3) and done=0
{global.slot3=me slot=3 select=1 done=1}



if instance_place(x,y,o_equipslot4) and done=0
{global.slot4=me  slot=4 select=1 done=1}

if instance_place(x,y,o_equipslot5) and done=0
{global.slot5=me  slot=5 select=1 done=1}}

if timer<=0 
{ instance_destroy() done=0 select=0}




if done=0
{instance_destroy() done=0 select=0}