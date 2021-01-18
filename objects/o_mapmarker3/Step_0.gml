if global.mapmaker3=0
{if global.level=level
{timer=timer-1}
if level=global.level and timer<=0
{global.level=golevel visible=1 instance_create_layer(x,y,"Instances",o_partuleeffectmaker) global.mapmaker3=1 }}

if global.mapmaker3=1
{visible=1}