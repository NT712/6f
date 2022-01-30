function onCreate()

makeLuaSprite ('darkSky', 'darkSky', -700, -150)
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

		makeLuaSprite ('redSky', 'redSky', -700, -150)
			addLuaSprite ('redSky', false)
		makeLuaSprite ('redSchool', 'redSchool', -220, -80)
			addLuaSprite ('redSchool', false)
			scaleObject ('redSchool', 0.8, 0.8)
		makeLuaSprite ('redStreet', 'redStreet', -450, -250)
			addLuaSprite ('redStreet', false)
		setScrollFactor ('redSchool', 0.95, 0.95)
		setScrollFactor ('redSky', 0.9, 0.9)
	setProperty('redStreet.visible', false);
	setProperty('redSky.visible', false);
	setProperty('redSchool.visible', false);
	setProperty('gfdead.visible', false);

end