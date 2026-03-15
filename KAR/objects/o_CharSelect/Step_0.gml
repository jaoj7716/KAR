getCurrentOption().selected = true

var optionXChange = (keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left))
var optionYChange = (keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up))

if (optionXChange != 0 or optionYChange != 0)
{
	getCurrentOption().selected = false
	
	rowIndex += optionYChange
	
	columnIndex += optionXChange
	
	rowIndex = scr_Wrap(rowIndex,0,array_length(allOptions) - 1)
	if (columnIndex >= array_length(allOptions[rowIndex]) or columnIndex < 0)
	{
		var endOfLine = false
		if (array_length(allOptions[rowIndex]) <= columnIndex)
		{
			endOfLine = true
		}
		rowIndex += optionXChange
		rowIndex = scr_Wrap(rowIndex,0,array_length(allOptions) - 1)
		if (endOfLine == true)
		{
			columnIndex = 0
		}
		else
		{
			columnIndex = array_length(allOptions[rowIndex]) - 1
		}
	}
	
	rowIndex = scr_Wrap(rowIndex,0,array_length(allOptions) - 1)
	columnIndex = clamp(columnIndex,0,array_length(allOptions[rowIndex])-1)
	getCurrentOption().selected = true
}