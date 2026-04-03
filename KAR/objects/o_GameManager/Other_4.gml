start_race = time_source_create(time_source_game, 5, time_source_units_seconds, function()
{
	global.inRace = true
}, [])

	time_source_start(start_race)