function onCreate()
	-- background shit
	makeLuaSprite('sky', 'funBg/sky', -580, -400);
	setScrollFactor('sky', 0.9, 0.9);

	addLuaSprite('sky', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end