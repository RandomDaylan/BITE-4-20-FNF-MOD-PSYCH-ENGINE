function onCreate()
    makeLuaSprite('cursor', 'cursor', 0, 0)
    setObjectCamera('cursor', 'other')
    addLuaSprite('cursor', true)

    setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)

    setVar('doorLeftOpen', false)
    setVar('doorRightOpen', false)
    setVar('lightLeftOn', false)
    setVar('lightRightOn', false)
end

function isMouseOver(tag)
    local mx = getVar("mx")
    local my = getVar("my")

    local x = getProperty(tag..'.x')
    local y = getProperty(tag..'.y')
    local w = getProperty(tag..'.width')
    local h = getProperty(tag..'.height')

    return mx >= x and mx <= x + w and
           my >= y and my <= y + h
end

function onUpdate()
    runHaxeCode([[
        var p = FlxG.mouse.getWorldPosition(game.camGame);
        game.variables.set("mx", p.x);
        game.variables.set("my", p.y);
    ]])

    setProperty('cursor.x', getMouseX('other') - getProperty('cursor.width') / 2)
    setProperty('cursor.y', getMouseY('other') - getProperty('cursor.height') / 2)

    if mouseClicked('left') then

        -- Puerta izquierda
        if isMouseOver('buttondoorleft') then
            if getVar('doorLeftOpen') then
                triggerEvent('stagevents', 'doorleft', 'off')
            else
                triggerEvent('stagevents', 'doorleft', 'on')
            end
        end

        -- Puerta derecha
        if isMouseOver('buttondoorright') then
            if getVar('doorRightOpen') then
                triggerEvent('stagevents', 'doorright', 'off')
            else
                triggerEvent('stagevents', 'doorright', 'on')
            end
        end

        -- Luz izquierda
        if isMouseOver('buttonlightleft') then
            if getVar('lightLeftOn') then
                triggerEvent('stagevents', 'lightleft', 'off')
            else
                triggerEvent('stagevents', 'lightleft', 'on')
            end
        end

        -- Luz derecha
        if isMouseOver('buttonlightright') then
            if getVar('lightRightOn') then
                triggerEvent('stagevents', 'lightright', 'off')
            else
                triggerEvent('stagevents', 'lightright', 'on')
            end
        end
    end
end

function onEvent(name, value1, value2)
    if name ~= 'stagevents' then
        return
    end

    --========================--
    --      PUERTA IZQ        --
    --========================--
    if value1 == 'doorleft' then
        if value2 == 'on' then
            doTweenAlpha('buttondoorleftTween', 'buttondoorleft', 1, 0.07, 'cubeIn')
            doTweenY('doorleftTween', 'doorleft', 0, 0.35, 'cubeIn')
            setVar('doorLeftOpen', true)
            setVar('bateria', getVar('bateria') + 1)
        else
            doTweenAlpha('buttondoorleftTween', 'buttondoorleft', 0, 0.07, 'cubeOut')
            doTweenY('doorleftTween', 'doorleft', -1000, 0.35, 'cubeOut')
            setVar('doorLeftOpen', false)
            setVar('bateria', getVar('bateria') - 1)
        end
    end

    --========================--
    --      PUERTA DER        --
    --========================--
    if value1 == 'doorright' then
        if value2 == 'on' then
            doTweenAlpha('buttondoorrightTween', 'buttondoorright', 1, 0.07, 'cubeIn')
            doTweenY('doorrightTween', 'doorright', 0, 0.35, 'cubeIn')
            setVar('doorRightOpen', true)
            setVar('bateria', getVar('bateria') + 1)
        else
            doTweenAlpha('buttondoorrightTween', 'buttondoorright', 0, 0.07, 'cubeOut')
            doTweenY('doorrightTween', 'doorright', -1000, 0.35, 'cubeOut')
            setVar('doorRightOpen', false)
            setVar('bateria', getVar('bateria') - 1)
        end
    end

    --========================--
    --      LUZ IZQ           --
    --========================--
    if value1 == 'lightleft' then
        if value2 == 'on' then
            setProperty('lightleft.alpha', 1)
            setProperty('buttonlightleft.alpha', 1)
            setVar('lightLeftOn', true)
            setVar('bateria', getVar('bateria') + 1)
        else
            setProperty('lightleft.alpha', 0)
            setProperty('buttonlightleft.alpha', 0)
            setVar('lightLeftOn', false)
            setVar('bateria', getVar('bateria') - 1)
        end
    end

    --========================--
    --      LUZ DER           --
    --========================--
    if value1 == 'lightright' then
        if value2 == 'on' then
            setProperty('lightright.alpha', 1)
            setProperty('buttonlightright.alpha', 1)
            setVar('lightRightOn', true)
            setVar('bateria', getVar('bateria') + 1)
        else
            setProperty('lightright.alpha', 0)
            setProperty('buttonlightright.alpha', 0)
            setVar('lightRightOn', false)
            setVar('bateria', getVar('bateria') - 1)
        end
    end

    --========================--
    --       ITS ME           --
    --========================--
    if value1 == 'itsme' then
        setVar('bateria', 3)
    end
end