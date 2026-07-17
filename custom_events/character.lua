function onEvent(name, value1, value2)
    if name == 'character' then
        if value1 == 'freddy' then
            doTweenX('dadTween', 'dad', getProperty('dad.x') - 900, 1, 'cubeOut')
        end
        if value1 == 'freddyshy' then
            doTweenX('dadTween', 'dad', getProperty('dad.x') + 900, 1, 'cubeIn')
        end
        if value1 == 'bonnie' then
            doTweenX('gfTween', 'gf', getProperty('gf.x') + 900, 1, 'cubeOut')
        end
        if value1 == 'bonnieshy' then
            doTweenX('gfTween', 'gf', getProperty('gf.x') - 900, 1, 'cubeIn')
        end
        if value1 == 'itsme' then
            doTweenX('dadTween', 'dad', getProperty('dad.x') + 900, 0.000001, 'linear')
            triggerEvent('Change Character', 'gf', 'goldenfreddy')
        end
        if value1 == 'foxy' then
            doTweenX('foxyTween', 'foxyjumpscare', getProperty('foxyjumpscare.x') + 1450, 1, 'cubeOut')
            doTweenAlpha('gfTweenAlpha', 'gf', 0, 0.4, 'cubeOut')
        end
        if value1 == 'foxy1' then
            doTweenX('gfTween', 'gf', getProperty('gf.x') - 900, 0.00000001, 'linear')
            doTweenAlpha('gfTweenAlpha', 'gf', 1, 0.0000001, 'cubeOut')
        end
        if value1 == 'foxy2' then
            triggerEvent('Change Character', 'gf', 'foxy')
            setProperty('foxyjumpscare.alpha', 0)
            doTweenX('dadTween', 'dad', getProperty('dad.x') + 900, 1, 'cubeIn')
        end
        if value1 == 'lightleftoff' then
            setProperty('lightleft.alpha', 0)
            doTweenAlpha('buttonlightleftTween', 'buttonlightleft', 0, 0.07, 'cubeIn')
        end
        if value1 == 'foxy3' then
            setProperty('gf.alpha', 0)
            setProperty('foxyjumpscare.alpha', 1)

        end
    end
end
