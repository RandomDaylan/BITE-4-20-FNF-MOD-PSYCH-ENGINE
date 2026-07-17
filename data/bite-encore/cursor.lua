function onCreate()
    makeLuaSprite('cursor', 'cursor', 0, 0)
    setObjectCamera('cursor', 'other')
    addLuaSprite('cursor', true)

    setPropertyFromClass('flixel.FlxG', 'mouse.visible', false) -- Oculta el cursor del sistema
end

function onUpdate(elapsed)
    setProperty('cursor.x', getMouseX('other'))
    setProperty('cursor.y', getMouseY('other'))
    if mouseOverlaps('buttondoorleft') and mouseClicked('left') then
        debugPrint('¡Botón presionado!')
    end	
end


