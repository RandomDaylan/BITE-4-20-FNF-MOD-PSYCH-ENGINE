function onEvent(name, value1, value2)
    if name == 'anew' then
        if value1 == 'yeah' then
             setProperty('hola.alpha', 1)
             doTweenAlpha('buttondoorrightTween', 'buttondoorright', 0, 0.07, 'cubeIn')
             doTweenY('doorrightTween', 'doorright', -1000, 0.35, 'cubeIn')
             doTweenX('dadTween', 'dad', getProperty('dad.x') - 900, 1, 'cubeOut')
        end
        if value1 == 'shy' then
             setProperty('hola.alpha', 0)
        end
    end
end
