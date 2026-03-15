if (selected == true)
{
	global.character = characters.rick
	sprite_index = sRickup
	if keyboard_check_pressed(ord("Z"))
	{
		room_goto(rDebug)
	}
}
else
{
	sprite_index = sRickdown
}