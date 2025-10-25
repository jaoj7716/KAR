//movement code

if keyboard_check(vk_left)
{
	if character = 0
	{
		sprite_index = sKirbyside
	}
	if character = 1
	{
		sprite_index = sPHc2
	}
	image_xscale = -1
	xspd -= 0.25
}

if keyboard_check(vk_right)
{
if character = 0
	{
		sprite_index = sKirbyside
	}
	if character = 1
	{
		sprite_index = sPHc2
	}
	image_xscale = 1
	xspd += 0.25
}


if keyboard_check(vk_up)
{
if character = 0
	{
		sprite_index = sKirbyup
	}
	if character = 1
	{
		sprite_index = sPHc2
	}
	yspd -= 0.25
}

if keyboard_check(vk_down)
{
if character = 0
	{
		sprite_index = sKirbyside
	}
	if character = 1
	{
		sprite_index = sPHc2
	}
	yspd += 0.25
}

x += xspd
y += yspd

//cap speeds

if xspd > cspd
{
	xspd = cspd
}

if yspd > cspd
{
	yspd = cspd
}

if xspd < ncspd
{
	xspd = ncspd
}

if yspd < ncspd
{
	yspd = ncspd
}


//dash code

if keyboard_check(vk_space)
{
	suck = 1
	xspd = 0
	yspd = 0
}

if keyboard_check_released(vk_space)
{
	suck = 0
	if keyboard_check(vk_left)
	{
		xspd -=	10
	}
	
	if keyboard_check(vk_right)
	{
		xspd += 10
	}
	
		if keyboard_check(vk_up)
	{
		yspd -= 10
	}
	
		if keyboard_check(vk_down)
	{
		yspd += 10
	}
	
}

//placeholder character switching
if keyboard_check(vk_backspace)
{ 
	character += 1
}


