shineTimer = max(-1,shineTimer - 1);
attackTimer = max(-1,attackTimer - 1);

if (attackTimer == 0)
{
	for (var i = 0; i < 8; i++)
	{
		with (instance_create_depth(x,y,depth - 1,obj_S_ATK))
		{
			hsp = lengthdir_x(4,((360 / 8) * i) + other.angle);
			vsp = lengthdir_y(4,((360 / 8) * i) + other.angle);
			
			isEnemy = true;
			sprite_index = spr_S_ATK2;
		}
	}
	
	angle = (angle + 20) % 45;
	
	attackTimer = attackTimerMax;
}