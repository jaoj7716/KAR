xspd = 0
yspd = 0
cspd = 15
ncspd = -15
suck = 0
character = characters.kirby
ccap = 2

enum characters
{
	kirby,
	placeholderChar2,
	
	length
}

enum characterInfoParams
{
	spriteSetScript
}

characterInfo[characters.kirby][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_Kirby;
characterInfo[characters.placeholderChar2][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_PlaceholderChar2;

script_execute(characterInfo[character][characterInfoParams.spriteSetScript]);