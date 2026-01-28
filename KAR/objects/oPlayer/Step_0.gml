//movement code

//These two are exactly what they say on the tin
var xInput = (keyboard_check(vk_right) - keyboard_check(vk_left))
var yInput = (keyboard_check(vk_down) - keyboard_check(vk_up))
//Another variable so that we can control the speed while also saving the current input
var xSpeed = xInput
var ySpeed = yInput

//dash code
if keyboard_check(vk_space)
{
	suck = 1 //no clue what this is
	dasht += 0.5
	xSpeed = 0
	ySpeed = 0
}

if keyboard_check_released(vk_space) && dasht > 19
{
	xspd = xInput * dashSpeed
	yspd = yInput * dashSpeed
	dasht = 0
}

if dasht > 25
{
	dasht = 25
}
if keyboard_check_released(vk_space) && dasht < 29
{
	dasht = 0
}

if (xInput != 0 or yInput != 0)
{
	var angle = (90*yInput) - ((45) * (xInput != 0 and yInput != 0)) //evil magic equation (it just works)
	if (xInput != 0)
	{
		image_xscale = xInput
	}
	switch (angle)
	{
		case 0:
		currentSprite = "Side"
		break;
		case 45:
		currentSprite = "DiagonalDown"
		break;
		case 90:
		currentSprite = "Down"
		break;
		case -135:
		image_xscale = -xInput //cause SOMEONE made the player's diagonal up sprites face the wrong way
		currentSprite = "DiagonalUp"
		break;
		case -90:
		currentSprite = "Up"
		break;
	}
}

//cap speeds
var xDelta = accelSpeed //amount that xspd will be changed by
if (xSpeed == 0 or xSpeed != sign(xspd)) //if player isn't moving or is turning
{
	xDelta = decelSpeed
}
var yDelta = accelSpeed //likewise
if (ySpeed == 0 or ySpeed != sign(yspd))
{
	yDelta = decelSpeed
}
//scr_MoveToward adds the third argument to the first, until it reaches the second (and doesnt go over/under)
xspd = scr_MoveToward(xspd,topSpeed*xSpeed,xDelta) 
yspd = scr_MoveToward(yspd,topSpeed*ySpeed,yDelta)

//move
x += xspd
y += yspd

//placeholder character switching
if keyboard_check_pressed(vk_backspace)
{ 
	character = (character + 1 + characters.length) % characters.length;
	
	setupCharacter()
}

//Use the currentSprite variable as a key for the playerSprites struct
sprite_index = playerSprites[$ currentSprite]
