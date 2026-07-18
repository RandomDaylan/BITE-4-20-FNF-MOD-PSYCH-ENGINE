function onCreate()
    makeLuaSprite('cursor', 'cursor', 0, 0)
    setObjectCamera('cursor', 'other')
    addLuaSprite('cursor', true)

    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)  -- Oculta el cursor del sistema
end

function onCreatePost()
    debugPrint(getProperty('buttondoorleft.x'))
    debugPrint(getProperty('buttondoorleft.y'))
end

function onUpdate()
    runHaxeCode([[
        var p = FlxG.mouse.getWorldPosition(game.camGame);
        game.variables.set("mx", p.x);
        game.variables.set("my", p.y);
    ]])

    local mx = getVar("mx")
    local my = getVar("my")

    local x = getProperty('buttondoorleft.x')
    local y = getProperty('buttondoorleft.y')
    local w = getProperty('buttondoorleft.width')
    local h = getProperty('buttondoorleft.height')

    if mx >= x and mx <= x + w and
       my >= y and my <= y + h then

        if mouseClicked('left') then
            debugPrint("CLICK")
        end
    end
end
