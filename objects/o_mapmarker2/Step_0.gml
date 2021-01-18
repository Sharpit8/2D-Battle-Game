if global.mapmaker2=0
{if global.level=level
{timer=timer-1}
if level=global.level and timer<=0
{global.level=golevel visible=1 instance_create_layer(x,y,"Instances",o_partuleeffectmaker) global.mapmaker2=1  }}

if global.mapmaker2=1
{visible=1}