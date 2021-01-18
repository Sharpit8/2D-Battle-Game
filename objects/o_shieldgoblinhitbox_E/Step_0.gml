sc_allcreature()

if !instance_exists(mainobject)
{instance_destroy()}
if instance_exists(mainobject)
{if once=0
{once=1 hplast=hp}

if once2=0 and !instance_exists(shield)
{hp=150 once2=1 hplast=hp}

if hplast!=hp and !instance_exists(shield)
{ mainobject.flash=1 mainobject.hp=other.hp hplast=hp}


if hplast!=hp and instance_exists(shield)
{shield.shield=1 shield.image_index=0 shield.flash=1 shield.hp=hp hplast=hp}








x=mainobject.x
y=mainobject.y




}

