//movement code

if keyboard_check(vk_left)
{
	sprite_index = sprSide;
	
	image_xscale = -1
	xspd -= 0.25
}

if keyboard_check(vk_right)
{
	sprite_index = sprSide;
	
	image_xscale = 1
	xspd += 0.25
}


if keyboard_check(vk_up)
{
	sprite_index = sprUp;
	
	yspd -= 0.25
}

if keyboard_check(vk_down)
{
	sprite_index = sprDown;
	
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
if keyboard_check_pressed(vk_backspace)
{ 
	character = (character + 1 + characters.length) % characters.length;
	
	script_execute(characterInfo[character][characterInfoParams.spriteSetScript]);
}


