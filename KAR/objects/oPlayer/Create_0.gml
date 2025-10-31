xspd = 0
yspd = 0
cspd = 15
ncspd = -15
suck = 0
character = characters.dedede
dasht = 0

enum characters
{
	kirby,
	dedede,
	
	length
}

enum characterInfoParams
{
	spriteSetScript
}

characterInfo[characters.kirby][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_Kirby;
characterInfo[characters.dedede][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_dedede;

script_execute(characterInfo[character][characterInfoParams.spriteSetScript]);