function onEvent(name, value1, value2)
    if name == 'characternotesmovement' then
        if value1 == 'show' then
            for i = 0, 3 do
                doTweenY('opoTween'..i, 'opponentStrums.members['..i..']', getPropertyFromGroup('opponentStrums', i, 'y') + 200, 1, 'cubeOut')
            end 
        end
        if value1 == 'right' then
            for i = 0, 3 do
                doTweenX('opoTween'..i, 'opponentStrums.members['..i..']', getPropertyFromGroup('opponentStrums', i, 'x') + 500, 1, 'cubeIn')
                doTweenX('gfTween'..i, 'gfStrum'..i, getProperty('gfStrum'..i..'.x') + 320, 1, 'cubeOut')
            end
        end
        if value1 == 'leftes' then
            for i = 0, 3 do
                doTweenX('opoTween'..i, 'opponentStrums.members['..i..']', getPropertyFromGroup('opponentStrums', i, 'x') - 500, 1, 'cubeOut')
                doTweenY('gfTween'..i, 'gfStrum'..i, getProperty('gfStrum'..i..'.y') + 175, 1, 'cubeInOut')
            end
        end
        if value1 == 'shownt' then
            for i = 0, 3 do
                doTweenY('opoTween'..i, 'opponentStrums.members['..i..']', getPropertyFromGroup('opponentStrums', i, 'y') - 200, 0.0001, 'cubeOut')
                doTweenX('gfTween'..i, 'gfStrum'..i, getProperty('gfStrum'..i..'.x') - 320, 0.0001, 'cubeOut')

                doTweenY('gfTween'..i, 'gfStrum'..i, getProperty('gfStrum'..i..'.y') - 175, 0.0001, 'cubeInOut')
            end
        end
        if value1 == 'opponentright' then
            for i = 0, 3 do
                doTweenX('opoTween'..i, 'opponentStrums.members['..i..']', getPropertyFromGroup('opponentStrums', i, 'x') + 500, 1, 'cubeIn')
            end
        end
        if value1 == 'opponentleft' then
            for i = 0, 3 do
                doTweenY('gfTween'..i, 'gfStrum'..i, getProperty('gfStrum'..i..'.y') + 175, 0.0001, 'cubeInOut')
                doTweenX('gfTween'..i, 'gfStrum'..i, getProperty('gfStrum'..i..'.x') + 320, 1, 'cubeOut')
            end
        end
    end
end


function onTimerCompleted(tag)

    if tag == 'right' then
        for i = 0, 3 do
            doTweenX('opoTween'..i, 'opponentStrums.members['..i..']', getPropertyFromGroup('opponentStrums', i, 'x') - 1750, 0.00001, 'linear')
            runTimer('right1', 0.01)
        end
    end
    if tag == 'right1' then
        for i = 0, 3 do
            doTweenX('opoTween'..i, 'opponentStrums.members['..i..']', getPropertyFromGroup('opponentStrums', i, 'x') + 400, 1, 'cubeOut')
        end
    end
end
