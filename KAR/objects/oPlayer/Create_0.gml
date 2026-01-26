xspd = 0
yspd = 0
up = false
down = false
left = false
right = false
character = characters.kirby
dasht = 0
global.Lap = 0
checkpoint1 = 0


enum characters
{
	kirby,
	dedede,
	metaknight,
	gooey,
	rick,
	
	length
}

enum characterInfoParams
{
	spriteSetScript
}

characterInfo[characters.kirby][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_Kirby;
characterInfo[characters.dedede][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_dedede;
characterInfo[characters.metaknight][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_meta;
characterInfo[characters.gooey][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_gooey;
characterInfo[characters.rick][characterInfoParams.spriteSetScript] = scr_Player_SetSprites_Rick;

script_execute(characterInfo[character][characterInfoParams.spriteSetScript]);






