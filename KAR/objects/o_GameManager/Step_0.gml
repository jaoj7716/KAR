if global.inRace = true
{
	var camera = view_camera[0]
	var camWidth = camera_get_view_width(camera)
	var camHeight = camera_get_view_height(camera)
	camera_set_view_pos(camera,oPlayer.x - camWidth/2,oPlayer.y - camHeight/2)
}


if global.inRace == false
{
	oPlayer.xspd = 0
	oPlayer.yspd = 0

}

if global.Lap = 5
{
  global.raceend = true
  global.inRace = false
}

if global.raceend && global.inRace= false
{
	room_goto(rMainmenu)
}

