if global.select = 1
{
	sprite_index = sMainselected
	if keyboard_check(ord("Z"))
	{
		room_goto_next()
	}
}

if keyboard_check(vk_down)
{
	global.select = 0
	sprite_index = sMainbutton
}

if keyboard_check(vk_up)
{
	global.select = 1
}