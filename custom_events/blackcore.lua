local vainanegra = 0

function onEvent(name, value1, value2)

    if name == 'blackcore' then
        if value1 == 'diavlo' then
            setProperty('black.alpha', 1)
            setProperty('overlay.alpha', 1)
            runTimer('cinematicFlicker', 0.2)
        end
        if value1 == 'ya' then

            cancelTimer('cinematicFlicker')

            cancelTween('black1')
            cancelTween('black2')
            cancelTween('black3')
            cancelTween('black4')
            cancelTween('black5')
            cancelTween('black6')

            doTweenAlpha('fadeOutBlack', 'black', 0, 2, 'sineOut')

            doTweenAlpha('fadeOutOverlay', 'overlay', 0, 2, 'sineOut')

            flickerState = 0
        end
    end
end

function onTimerCompleted(tag)

    if tag == 'cinematicFlicker' then

        vainanegra = vainanegra + 1

        if vainanegra == 1 then

            doTweenAlpha('black1', 'black', 0.50, 0.5, 'sineInOut')
            runTimer('cinematicFlicker', 0.7)

        elseif vainanegra == 2 then

            doTweenAlpha('black2', 'black', 0.45, 0.6, 'sineInOut')
            runTimer('cinematicFlicker', 0.5)

        elseif vainanegra == 3 then


            doTweenAlpha('black3', 'black', 0.65, 0.5, 'expoOut')
            runTimer('cinematicFlicker', 0.5)

        elseif vainanegra == 4 then

            doTweenAlpha('black4', 'black', 0.6, 0.7, 'sineOut')
            runTimer('cinematicFlicker', 0.7)

        elseif vainanegra == 5 then

            doTweenAlpha('black5', 'black', 0.8, 0.2, 'linear')
            runTimer('cinematicFlicker', 0.2)

        elseif vainanegra == 6 then

            doTweenAlpha('black6', 'black', 0.65, 0.15, 'linear')
            runTimer('cinematicFlicker', 0.15)

        elseif vainanegra == 7 then

            vainanegra = 0
            runTimer('cinematicFlicker', 1.5)

        end
    end
end