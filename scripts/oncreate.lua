function onCreate() 

    makeLuaSprite('black', 'black', 0, 0);
    setProperty('black.alpha', 0);
    setProperty('buttondoorleft.alpha', 0);
    setProperty('buttondoorright.alpha', 0);
    setProperty('buttonlightleft.alpha', 0);
    setProperty('buttonlightright.alpha', 0);
    addLuaSprite('black', true);

    makeLuaSprite('overlay', 'overlay', -235, 0);
    setProperty('overlay.alpha', 0);
    setProperty('overlay.scaleX', 1.3);
    setProperty('overlay.scaleY', 1.3);
    addLuaSprite('overlay', true);
end
