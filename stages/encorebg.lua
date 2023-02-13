function onCreate()

makeLuaSprite('bg', 'bgnight', -400, -260);
scaleObject('bg', 4.1171875, 4.1171875);
setProperty('bg.antialiasing', false);
setScrollFactor('bg', 0.9, 0.9);
addLuaSprite('bg')

makeLuaSprite('piso', 'stagenight', -400, -260);
scaleObject('piso', 4, 4);
setProperty('piso.antialiasing', false);
addLuaSprite('piso')

end