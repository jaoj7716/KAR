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

accelSpeed = 0.13
decelSpeed = 0.07 
topSpeed = 5
dashSpeed = 7


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

setupCharacter()

vehicleSprites = {  //To get any of these, just do vehicleSprites[$ key name]
	"Side" : sWSside,
	"Up" : sWSup,
	"Down" : sWSdown,
	"DiagonalDown" : sWSdiagonal1,
	"DiagonalUp" : sWSdiagonal2,
}

currentSprite = "Side" //Player sprites are now string IDs

function setupCharacter()
{
	playerSprites = script_execute(characterInfo[character][characterInfoParams.spriteSetScript]);
}