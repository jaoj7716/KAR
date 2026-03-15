if (selected == true)
{
			global.character = characters.metaknight
	sprite_index = smkup
	if keyboard_check_pressed(ord("Z"))
	{
 
		room_goto(rDebug)
	}
}
else
{
	sprite_index = smkdown
}