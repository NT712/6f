local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		startCutscene();
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

flashCount = 0;
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'LunchboxScary');
		removeLuaSprite('senpaiEvil');
		removeLuaSprite('whiteFlashSenpai');
		removeLuaSprite('senpaiRed');
		setProperty('camHUD.visible', true);
	elseif tag == 'startSenpai' then
		doTweenAlpha('senpaiEvilAlphaTween', 'senpaiEvil', 1.0, 2.0, 'linear');
	elseif tag == 'flash'..flashCount then
		setProperty('whiteFlashSenpai.alpha', 1);
		doTweenAlpha('whiteFlashAlphaTween'..flashCount, 'whiteFlashSenpai', 0, 0.15, 'linear');
		flashCount = flashCount + 1;
	elseif tag == 'start ending flash' then
		setProperty('whiteFlashSenpai.alpha', 0);
		doTweenAlpha('whiteEndAlphaTween', 'whiteFlashSenpai', 1, 2, 'linear');
		runTimer('startDialogue', 3.5);
	end
end

function onTweenCompleted(tag)
	if tag == 'senpaiEvilAlphaTween' then
		playSound('Senpai_Dies');
		objectPlayAnimation('senpaiEvil', 'die');
		runTimer('start ending flash', 3.2);

		if flashingLights then
			runTimer('flash0', 1.0);
			runTimer('flash1', 1.4);
			runTimer('flash2', 1.8);
			runTimer('flash3', 2.0);
			runTimer('flash4', 2.2);
		end
	end
end

function startCutscene()
	makeLuaSprite('senpaiRed', nil, -100, -100);
	makeGraphic('senpaiRed', screenWidth * 2, screenHeight * 2, 'FF1B31');
	setScrollFactor('senpaiRed', 0, 0);
	addLuaSprite('senpaiRed', true);

	assetName = 'senpaideath';
	makeAnimatedLuaSprite('senpaiEvil', assetName, 0, 0);
	addAnimationByIndices('senpaiEvil', 'idle', 'senpai dies', '0', 24);
	addAnimationByPrefix('senpaiEvil', 'die', 'senpai dies', 24, false);
	setScrollFactor('senpaiEvil', 0, 0);
	screenCenter('senpaiEvil');
	setProperty('senpaiEvil.y', getProperty('senpaiEvil.y') + 20);
	setProperty('senpaiEvil.alpha', 0);
	addLuaSprite('senpaiEvil', true);

	makeLuaSprite('whiteFlashSenpai', nil, -100, -100);
	makeGraphic('whiteFlashSenpai', screenWidth * 2, screenHeight * 2, 'FFFFFF');
	setScrollFactor('whiteFlashSenpai', 0, 0);
	setProperty('whiteFlashSenpai.alpha', 0);
	addLuaSprite('whiteFlashSenpai', true);

	setProperty('camHUD.visible', false);
	runTimer('startSenpai', 2);
	
	playMusic('LunchboxScary', 0, true);
	soundFadeIn(nil, 1, 0, 0.8);
end