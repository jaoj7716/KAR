if (selected == true)
{
			global.character = characters.kirby
	sprite_index = sKirbyup
	if keyboard_check_pressed(ord("Z"))
	{
 
		room_goto(rDebug)
	}
}
else
{
	sprite_index = sKirbydown
}