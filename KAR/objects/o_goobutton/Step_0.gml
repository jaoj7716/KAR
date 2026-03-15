if (selected == true)
{
		global.character = characters.gooey
	sprite_index = sGooup
	if keyboard_check_pressed(ord("Z"))
	{
	
		room_goto(rDebug)
	}
}
else
{
	sprite_index = sGoodown
}