if (selected == true)
{
	global.character = characters.dedede
	sprite_index = sdddup
	if keyboard_check_pressed(ord("Z"))
	{
		room_goto(rDebug)
	}
}
else
{
	sprite_index = sddddown
}