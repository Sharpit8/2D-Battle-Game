//global.CreatureStorageGrid=ds_grid_create(154,140)

var listlength=array_height_2d(global.CreatureStorage)
i=0

while listlength>i
{var thing = global.CreatureStorage[i,0]
if thing!=0
{
with instance_create_layer(x,y,"troops",o_CreatureSelecter)
{slot=other.i x=global.CreatureStorage[other.i,1]
y=global.CreatureStorage[other.i,2] }
}
i=i+1
}

camera=instance_nearest(x,y,o_camera)

