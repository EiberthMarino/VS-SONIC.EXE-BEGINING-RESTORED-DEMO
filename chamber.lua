function onCreate()
	-- background shit
	makeLuaSprite('stagechu', 'fleetway/Wall', -1200, -600);
	setLuaSpriteScrollFactor('Wall', 1, 1);
	scaleObject('stagechu', 1.5, 1.5);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
--realmente no era necesaria esta parte, solo daba lag innecesario
	end
	addLuaSprite('stagechu', false);

    makeLuaSprite('border-alt', 'fleetway/border-alt', 0, 0);
    setObjectCamera('border-alt', 'hud');	
	addLuaSprite('border-alt', false);

    makeLuaSprite('border', 'fleetway/border', 0, 0);
    setObjectCamera('border', 'hud');	
	addLuaSprite('border', false);
	setProperty('border.visible', false);
end
function onCountdownStarted()
setTextFont("scoreTxt", "poke.ttf");
setTextFont("botplayTxt", "poke.ttf");
setTextFont("timeTxt", "poke.ttf");
end
function onStepHit()
if curStep == 10 then
	noteTweenAlpha("NoteAlpha0" , 0 , 0, 1, cubeInOut)
    noteTweenAlpha("NoteAlpha1" , 1 , 0, 2, cubeInOut)
    noteTweenAlpha("NoteAlpha2" , 2 , 0, 3, cubeInOut)
    noteTweenAlpha("NoteAlpha3" , 3 , 0, 4, cubeInOut)
	end
if curStep == 80 or curStep == 655 then
        doTweenAlpha('Wfade', 'border-alt', 0, 3, 'linear');
	end
if curStep == 271 or curStep == 1039 then
        makeLuaSprite('topBar', '', 0, -100)
        makeGraphic('topBar', 1280, 100, '000000')
        setObjectCamera('topBar', 'hud')
        addLuaSprite('topBar')
        doTweenY('zoomdown', 'topBar', 0, 1.5, 'circInOut')

        setObjectCamera('fade', 'game')
        setProperty('fade.x', 0)
        setProperty('fade.y', -30)
        setProperty('fade.scale.x', 2)
        setProperty('fade.scale.y', 2.5)

        makeLuaSprite('botBar', '', 0, 720)
        makeGraphic('botBar', 1280, 1000, '000000')
        setObjectCamera('botBar', 'hud')
        addLuaSprite('botBar', false)
        doTweenY('zoomup', 'botBar', 620, 1.5, 'circInOut')
		setProperty('topBar.visible', true)
	end
if curStep == 527 or curStep == 1295 then
        doTweenY('yeet', 'topBar', -100, 1, 'circInOut')
        doTweenY('gbye', 'botBar', 720, 1.5, 'circInOut')
	end
if curStep == 532 or curStep == 1300 then
        doTweenAlpha('Wfade', 'border-alt', 1, 3, 'circInOut');
	end
if curStep == 1935 then
	noteTweenAlpha("NoteAlpha4" , 4 , 0, 1, cubeInOut)
    noteTweenAlpha("NoteAlpha5" , 5 , 0, 2, cubeInOut)
    noteTweenAlpha("NoteAlpha6" , 6 , 0, 3, cubeInOut)
    noteTweenAlpha("NoteAlpha7" , 7 , 0, 4, cubeInOut)
	end
end