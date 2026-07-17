function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'goldenNote' then
            setPropertyFromGroup('unspawnNotes', i, 'gfNote', true)


        end
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)

    if noteType == 'goldenNote' then

        local randomImage = math.random(1, 4)

        if randomImage == 1 then
            setProperty('freddy.alpha', 1)

        elseif randomImage == 2 then
            setProperty('bonnie.alpha', 1)

        elseif randomImage == 3 then
            setProperty('itsme.alpha', 1)

        elseif randomImage == 4 then
            setProperty('itsme2.alpha', 1)
        end

        runTimer('hideImages', 0.065)
    end
end

function onTimerCompleted(tag)

    if tag == 'hideImages' then

        setProperty('freddy.alpha', 0)
        setProperty('bonnie.alpha', 0)
        setProperty('itsme.alpha', 0)
        setProperty('itsme2.alpha', 0)

    end
end