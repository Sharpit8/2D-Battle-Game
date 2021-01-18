if instance_exists(o_camera)
{x=o_camera.x-gap}

if out=0 and gap<1210
{gap=gap+100
	with o_relic	
{if canpush=1
	{global.RelicStorage[slot,0]=global.RelicStorage[slot,0]-100}}
	}

if out=1 and gap>1210-400
{gap=gap-100
with o_relic	
{
if canpush=1
{global.RelicStorage[slot,0]=global.RelicStorage[slot,0]+100}}
	}

if goout=1 and gap>1210
{room_goto(r_World1Map)}

