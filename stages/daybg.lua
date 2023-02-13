function onCreate()
if not lowQuality then
makeLuaSprite('bg', 'bgday', -400, -260);
scaleObject('bg', 4.1171875, 4.1171875);
setProperty('bg.antialiasing', false);
setScrollFactor('bg', 0.9, 0.9);
addLuaSprite('bg')

makeLuaSprite('piso', 'stageday', -400, -260);
scaleObject('piso', 4, 4);
setProperty('piso.antialiasing', false);
addLuaSprite('piso')

makeLuaSprite('bg2', 'bgnight', -400, -260);
scaleObject('bg2', 4.1171875, 4.1171875);
setProperty('bg2.antialiasing', false);
setProperty('bg2.alpha', 0);
setScrollFactor('bg2', 0.9, 0.9);
addLuaSprite('bg2')

makeLuaSprite('piso2', 'stagenight', -400, -260);
scaleObject('piso2', 4, 4);
setProperty('piso2.antialiasing', false);
setProperty('piso2.alpha', 0);
addLuaSprite('piso2')
end

if lowQuality then
makeLuaSprite('piso', 'stageday-opt', -400, -260);
scaleObject('piso', 4, 4);
setProperty('piso.antialiasing', false);
addLuaSprite('piso')

makeLuaSprite('piso2', 'stagenight-opt', -400, -260);
scaleObject('piso2', 4, 4);
setProperty('piso2.antialiasing', false);
setProperty('piso2.alpha', 0);
addLuaSprite('piso2')
end

makeAnimatedLuaSprite('ring', 'ring', 700, 300);
addAnimationByPrefix('ring', 'idle', 'idle', 15, true);
objectPlayAnimation('ring', 'idle', true)
scaleObject('ring', 4, 4);
setProperty('ring.antialiasing', false);
addLuaSprite('ring')

makeAnimatedLuaSprite('ring2', 'ring', 765, 300);
addAnimationByPrefix('ring2', 'idle', 'idle', 15, true);
objectPlayAnimation('ring2', 'idle', true)
scaleObject('ring2', 4, 4);
setProperty('ring2.antialiasing', false);
addLuaSprite('ring2')

makeAnimatedLuaSprite('ring3', 'ring', 829, 300);
addAnimationByPrefix('ring3', 'idle', 'idle', 15, true);
objectPlayAnimation('ring3', 'idle', true)
scaleObject('ring3', 4, 4);
setProperty('ring3.antialiasing', false);
addLuaSprite('ring3')

end

function onStepHit()
        if curStep == 715 then --The number is when you want the thing to happen, you can view the curSteps in the chart editer
        --setProperty('camHUD.visible', false);
		doTweenAlpha('o', 'bg', 0, 7, 'linear');
		doTweenAlpha('oa', 'piso', 0, 7, 'linear');
		doTweenAlpha('oaa1', 'ring', 0, 7, 'linear');
		doTweenAlpha('oaa2', 'ring2', 0, 7, 'linear');
		doTweenAlpha('oaa3', 'ring3', 0, 7, 'linear');
		doTweenAlpha('bf', 'boyfriend', 0, 7, 'linear');
		doTweenAlpha('gf', 'gf', 0, 7, 'linear');
		doTweenAlpha('oaa', 'camHUD', 0, 1.5, 'linear');
        end
		
		 if curStep == 844 then --The number is when you want the thing to happen, you can view the curSteps in the chart editer
        --setProperty('camHUD.visible', false);
		doTweenAlpha('o', 'bg2', 1, 1, 'linear');
		doTweenAlpha('oa', 'piso2', 1, 1, 'linear');
		doTweenAlpha('oaa1', 'ring', 1, 1, 'linear');
		doTweenAlpha('oaa2', 'ring2', 1, 1, 'linear');
		doTweenAlpha('oaa3', 'ring3', 1, 1, 'linear');
		doTweenAlpha('bf', 'boyfriend', 1, 1, 'linear');
		doTweenAlpha('gf', 'gf', 1, 1, 'linear');
		doTweenAlpha('oaa', 'camHUD', 1, 1, 'linear');
        end
end