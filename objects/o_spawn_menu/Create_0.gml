clicktocontinue=0
enemylist=0
timer=50
boss=o_goblinlevel1


once=0
if array_height_2d(global.CreatureStorage)>global.slot1
{with instance_create_layer(x,y,"spawn_icon",o_CreatureSpawner)
{slot=global.slot1}}

if array_height_2d(global.CreatureStorage)>global.slot2
{with instance_create_layer(x,y,"spawn_icon",o_CreatureSpawner)
{slot=global.slot2}}

if array_height_2d(global.CreatureStorage)>global.slot3
{with instance_create_layer(x,y,"spawn_icon",o_CreatureSpawner)
{slot=global.slot3}}

if array_height_2d(global.CreatureStorage)>global.slot4
{with instance_create_layer(x,y,"spawn_icon",o_CreatureSpawner)
{slot=global.slot4}}

if array_height_2d(global.CreatureStorage)>global.slot5
{with instance_create_layer(x,y,"spawn_icon",o_CreatureSpawner)
{slot=global.slot5}}

