if (selected == true)
{
	sprite_index = sMainselected
	if keyboard_check(ord("Z"))
	{
		room_goto(rGame)
	}
}
else
{
	sprite_index = sMainbutton
}