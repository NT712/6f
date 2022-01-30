-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Swap BG' then
		toSecondBG = false;
		if tonumber(value1) > 0 then
			toSecondBG = true;
		end

		-- ADD THE FIRST BG SPRITES HERE
		setProperty('School.visible', not toSecondBG);
		setProperty('Street.visible', not toSecondBG);
		setProperty('Sky.visible', not toSecondBG);
		setProperty('Trees.visible', not toSecondBG);
		setProperty('Freaks.visible', not toSecondBG);
		-- ADD THE SECOND BG SPRITES HERE
		setProperty('darkSchool.visible', toSecondBG);
		setProperty('darkStreet.visible', toSecondBG);
		setProperty('darkSky.visible', toSecondBG);
		setProperty('darkTrees.visible', toSecondBG);
		setProperty('dead.visible', toSecondBG);
	end
end