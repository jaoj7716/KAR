if (selected == true)
{
	sprite_index = sMainselected
	if keyboard_check_pressed(ord("Z"))
	{
		room_goto(rCharactermenu)
		var target = rCharactermenu
	TransitionStart(target,out, in)
	}
}
else
{
	sprite_index = sMainbutton
}