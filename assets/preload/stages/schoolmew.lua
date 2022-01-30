function onCreate()

makeLuaSprite ('Sky', 'Sky', -700, -50)
	addLuaSprite ('Sky', false)
makeLuaSprite ('School', 'School', -220, -80)
	addLuaSprite ('School', false)
	scaleObject ('School', 0.8, 0.8)
makeLuaSprite ('Street', 'Street', -450, -250)
	addLuaSprite ('Street', false)
makeLuaSprite ('Trees', 'Trees', -350, -150)
	addLuaSprite ('Trees', false)
	scaleObject ('Trees', 0.9, 0.9)
setScrollFactor ('School', 0.95, 0.95)
setScrollFactor ('Sky', 0.9, 0.9)
makeAnimatedLuaSprite('Freaks', 'Freaks', -100, 175)
		addAnimationByPrefix('Freaks', 'first', 'BG girls group', 24, true)
		addAnimationByPrefix('Freaks', 'second', 'dead', 24, true)
		objectPlayAnimation('Freaks', 'first');
		addLuaSprite('Freaks', false)
				makeLuaSprite ('darkSky', 'darkSky', -700, -50)
				addLuaSprite ('darkSky', false)
			makeLuaSprite ('darkSchool', 'darkSchool', -220, -80)
				addLuaSprite ('darkSchool', false)
				scaleObject ('darkSchool', 0.8, 0.8)
			makeLuaSprite ('darkStreet', 'darkStreet', -450, -250)
				addLuaSprite ('darkStreet', false)
			makeLuaSprite ('darkTrees', 'darkTrees', -350, -150)
				addLuaSprite ('darkTrees', false)
				scaleObject ('darkTrees', 0.9, 0.9)
			setScrollFactor ('darkSchool', 0.95, 0.95)
			setScrollFactor ('darkSky', 0.9, 0.9)
				makeLuaSprite('dead', 'dead', -100, 175)
					addLuaSprite('dead', false)
					setProperty('darkSchool.visible', false);
		setProperty('darkStreet.visible', false);
		setProperty('darkSky.visible', false);
		setProperty('darkTrees.visible', false);
		setProperty('dead.visible', false);
		setProperty('darkSchool.visible', false);

end

function onBeatHit()
	objectPlayAnimation('Freaks', 'first');
	end