if (isEnemy)
{
	with (obj_S_CSG)
	{
		if (place_meeting(x,y,other))
		{
			hp -= 1;
			shineTimer = shineTimerMax;
		
			instance_destroy(other);
		}
	}
	
	x += hsp;
	y += vsp;
}
else
{
	if (instance_exists(obj_S_STR)) move_towards_point(obj_S_STR.x,obj_S_STR.y,10);
	
	with (obj_S_STR)
	{
		if (place_meeting(x,y,other))
		{
			hp -= 1;
			shineTimer = shineTimerMax;
			
			instance_destroy(other);
		}
	}
}