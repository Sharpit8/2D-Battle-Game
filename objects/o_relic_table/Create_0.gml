out=0
outonce=0
gap=1210
goout=0

var listlength=array_height_2d(global.RelicStorage)
i=0

while listlength>i
{var thing = global.RelicStorage[i,0]
if thing!=0
{
with instance_create_layer(x,y,"relics",o_relic)
{slot=other.i }
}
i=i+1
}


