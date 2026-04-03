global.inRace = false
global.character = characters.kirby
global.raceend = true
start_race = time_source_create(time_source_game, 5, time_source_units_seconds, function()
{
	global.inRace = true
}, [])

end_race = time_source_create(time_source_game, 5, time_source_units_seconds, function()
{
	room_goto(rTitleScreen)
}, [])

