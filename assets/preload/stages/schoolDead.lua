function onCreate()

makeLuaSprite ('graySky', 'graySky', -700, -150)
	addLuaSprite ('graySky', false)
makeLuaSprite ('graySchool', 'graySchool', -220, -80)
	addLuaSprite ('graySchool', false)
	scaleObject ('graySchool', 0.8, 0.8)
makeLuaSprite ('grayStreet', 'grayStreet', -450, -250)
	addLuaSprite ('grayStreet', false)
setScrollFactor ('graySchool', 0.95, 0.95)
setScrollFactor ('graySky', 0.9, 0.9)
end