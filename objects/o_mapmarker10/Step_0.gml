
if global.level=level
{timer=timer-1}
if global.level=level and timer<=0
{global.level=golevel visible=1 instance_create_layer(x,y,"Instances",o_partuleeffectmaker) global.mapmaker1=1 }

if global.level>=golevel
{visible=1}