if (selected == true)
{
			global.character = characters.coo
	sprite_index = s_coo_up
	if keyboard_check_pressed(ord("Z"))
	{
 
		room_goto(rDebug)
	}
}
else
{
	sprite_index = s_coo_down
}