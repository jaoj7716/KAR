shineTimer = max(-1,shineTimer - 1);
canAttackTimer = max(-1,canAttackTimer - 1);

if ((canAttackTimer == -1) and (mouse_check_button(mb_left)))
{
	with (instance_create_depth(x,y,depth - 1,obj_S_ATK))
	{
		isEnemy = false;
		sprite_index = spr_S_ATK1;
	}
	
	canAttackTimer = canAttackTimerMax;
}