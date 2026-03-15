if (selected == true)
{
	sprite_index = sMainselected
	if keyboard_check_pressed(ord("Z"))
	{
		room_goto(rCharactermenu)
	}
}
else
{
	sprite_index = sMainbutton
}