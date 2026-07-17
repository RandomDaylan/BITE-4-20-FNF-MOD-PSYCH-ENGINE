local batime
local am = 0;
local amx = 1150;
local amy = 25 ;
local barx = 25;
local bary = 650;

function onCreatePost()
	setVar('bateria', 1);
    runTimer('losshp', batime, 0);
    runTimer('time', 58, 0);
    makeLuaSprite('night7', 'hud/night7', amx, amy + 40);
    addLuaSprite('night7', true);
    scaleObject('night7', 1, 1)


    makeLuaSprite('power', 'hud/power', 25, 625);
    addLuaSprite('power', true);

    makeLuaSprite('12', 'hud/0', amx, amy);
    addLuaSprite('12', true);
    makeLuaSprite('1', 'hud/1', amx, amy);
    addLuaSprite('1', true);
    makeLuaSprite('2', 'hud/2', amx, amy);
    addLuaSprite('2', true);
    makeLuaSprite('3', 'hud/3', amx, amy);
    addLuaSprite('3', true);
    makeLuaSprite('4', 'hud/4', amx, amy);
    addLuaSprite('4', true);
    makeLuaSprite('5', 'hud/5', amx, amy);
    addLuaSprite('5', true);

    setProperty('12.alpha', 0);
    setProperty('1.alpha', 0);
    setProperty('2.alpha', 0);
    setProperty('3.alpha', 0);
    setProperty('4.alpha', 0);
    setProperty('5.alpha', 0);

    makeLuaSprite('bar1', 'hud/bar1', barx, bary);
    addLuaSprite('bar1', true);
    makeLuaSprite('bar2', 'hud/bar2', barx, bary);
    addLuaSprite('bar2', true);
    makeLuaSprite('bar3', 'hud/bar3', barx, bary);
    addLuaSprite('bar3', true);
    makeLuaSprite('bar4', 'hud/bar4', barx, bary);
    addLuaSprite('bar4', true);
    makeLuaSprite('bar5', 'hud/bar5', barx, bary);
    addLuaSprite('bar5', true);

    setProperty('bar1.alpha', 1);
    setProperty('bar2.alpha', 0);
    setProperty('bar3.alpha', 0);
    setProperty('bar4.alpha', 0);
    setProperty('bar5.alpha', 0);

    makeLuaText('vidaText', '', 0, 166, 615)
    setTextFont('vidaText', 'LcdSolid-VPzB.ttf')
    setTextSize('vidaText', 30)
    setObjectCamera('vidaText', 'hud')

    addLuaText('vidaText')
end

function onUpdate()
    local vida = math.floor(getHealth() * 50)

    setTextString('vidaText', tostring(vida))

    if vida == 100 then
        setTextString('vidaText', '99')
    end
    if vida == 101 then
        setTextString('vidaText', '99')
    end

    if am == 0 then
        setProperty('12.alpha', 1);
        setProperty('1.alpha', 0);
    end
    if am == 1 then
        setProperty('12.alpha', 0);
        setProperty('1.alpha', 1);

    end
    if am == 2 then
        setProperty('1.alpha', 0);
        setProperty('2.alpha', 1);
    end
    if am == 3 then
        setProperty('2.alpha', 0);
        setProperty('3.alpha', 1);
    end
    if am == 4 then
        setProperty('3.alpha', 0);
        setProperty('4.alpha', 1);
    end
    if am == 5 then
        setProperty('4.alpha', 0);
        setProperty('5.alpha', 1);
    end
    if am == 7777 then
        setProperty('12.alpha', 0);
        setProperty('1.alpha', 0);
        setProperty('2.alpha', 0);
        setProperty('3.alpha', 0);
        setProperty('4.alpha', 0);
        setProperty('5.alpha', 0);
    end





    if 	getVar('bateria') == 1 then
        setProperty('bar1.alpha', 1);
        setProperty('bar2.alpha', 0);
        setProperty('bar3.alpha', 0);
        setProperty('bar4.alpha', 0);
        setProperty('bar5.alpha', 0);
        batime = 1  
    end
    if getVar('bateria') == 2 then
        setProperty('bar1.alpha', 0);
        setProperty('bar2.alpha', 1);
        setProperty('bar3.alpha', 0);
        setProperty('bar4.alpha', 0);
        setProperty('bar5.alpha', 0);
        batime = 0.5  
    end
    if getVar('bateria') == 3 then
        setProperty('bar1.alpha', 0);
        setProperty('bar2.alpha', 0);
        setProperty('bar3.alpha', 1);
        setProperty('bar4.alpha', 0);
        setProperty('bar5.alpha', 0);
        batime = 0.25  
    end
    if getVar('bateria') == 4 then
        setProperty('bar1.alpha', 0);
        setProperty('bar2.alpha', 0);
        setProperty('bar3.alpha', 0);
        setProperty('bar4.alpha', 1);
        setProperty('bar5.alpha', 0);
        batime = 0.125  
    end
    if getVar('bateria') == 5 then
        setProperty('bar1.alpha', 0);
        setProperty('bar2.alpha', 0);
        setProperty('bar3.alpha', 0);
        setProperty('bar4.alpha', 0);
        setProperty('bar5.alpha', 1);
        batime = 0.0625  
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'time' then
        runTimer('time', 45, 0)
        am = am + 1;
    end
    if tag == 'losshp' then
        setProperty('health', getProperty('health') - 0.02);
        runTimer('losshp', batime, 0);
    end
end
