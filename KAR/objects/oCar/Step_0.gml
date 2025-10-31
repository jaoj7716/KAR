//movement code

if keyboard_check(vk_left)
{
	sprite_index = sWSside;
	
	image_xscale = -1
	xspd -= 0.25
}

if keyboard_check(vk_right)
{
	sprite_index = sWSside;
	
	image_xscale = 1
	xspd += 0.25
}


if keyboard_check(vk_up)
{
	sprite_index = sWSup;
	
	yspd -= 0.25
}

if keyboard_check(vk_down)
{
	sprite_index = sWSdown;
	
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
	
	if keyboard_check(vk_left)
	{
	xspd += 0.20
	}
	
	if keyboard_check(vk_right)
	{
	xspd -= 0.20
	}
	
	if keyboard_check(vk_up)
	{
	yspd += 0.20
	}
	
	if keyboard_check(vk_down)
	{
		yspd -= 0.20
	}
}

if keyboard_check_released(vk_space)
{
	suck = 0
	if keyboard_check(vk_left) 
	{ 
		xspd -=	7
	}
	
	if keyboard_check(vk_right)
	{
		xspd += 7
	}
	
		if keyboard_check(vk_up) 
	{
		yspd -= 7
	}
	
		if keyboard_check(vk_down) 
	{
		yspd += 7
		
	}
	
	
}


