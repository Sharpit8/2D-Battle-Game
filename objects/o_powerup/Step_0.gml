if select=0
{x=mainobject.x+550 y=994 global.canspawn=1}

if select=1
{x=mouse.x y=mouse.y global.canspawn=0}

cooldown=cooldown-1

if instance_place(x,y,creature)
{
target=instance_place(x,y,creature)


target.powerselect=1}

with control
{sprite_index=other.sprite}

thing=instance_place(x,y,parent_spawner)

with thing
{powerselect=1}

if cooldownmax=100
{coolpercent=1.38}

if cooldownmax=200
{coolpercent=0.69}

if cooldownmax=300
{coolpercent=0.46}

if cooldownmax=400
{coolpercent=0.345}

if cooldownmax=500
{coolpercent=0.276}

if cooldownmax=600
{coolpercent=0.23}

if cooldownmax=700
{coolpercent=0.19714285714}

if cooldownmax=800
{coolpercent=0.1725}

if cooldownmax=900
{coolpercent=0.15333333333}

if cooldownmax=1000
{coolpercent=0.138}