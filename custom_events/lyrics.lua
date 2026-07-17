function onCreate()

    makeLuaText('santamaria', '', 600, 350, 300)
    setTextSize('santamaria', 32)
    setTextAlignment('santamaria', 'center')
    setObjectCamera('santamaria', 'hud')
    setTextColor('santamaria', 'FFFFFF')
    setTextFont('santamaria', 'LcdSolid-VPzB.ttf')
    addLuaText('santamaria')

    setProperty('santamaria.alpha', 0)

end

function onEvent(name, value1, value2)

    if name == 'lyrics' then

        cancelTimer('ocultarTexto')

        cancelTween('textoOut')

        setTextString('santamaria', value1)

        setProperty('santamaria.alpha', 1)

        runTimer('ocultarTexto', tonumber(value2))

    end

end

function onTimerCompleted(tag)

    if tag == 'ocultarTexto' then

        doTweenAlpha('textoOut', 'santamaria', 0, 0.3, 'linear')

    end

end