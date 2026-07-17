function onCreatePost()
    for i = 0, 3 do
        setPropertyFromGroup('opponentStrums', i, 'visible', true)
        setPropertyFromGroup('opponentStrums', i, 'x', 900 + (i * 75))
        setPropertyFromGroup('opponentStrums', i, 'y', -100)
        setPropertyFromGroup('opponentStrums', i, 'alpha', 0.6)
        setPropertyFromGroup('opponentStrums', i, 'scale.x', 0.5)
        setPropertyFromGroup('opponentStrums', i, 'scale.y', 0.5)
    end
end

function onUpdate()
    for i = 0, getProperty('notes.length') - 1 do
        if not getPropertyFromGroup('notes', i, 'mustPress') then
            setPropertyFromGroup('notes', i, 'visible', true)

            if getPropertyFromGroup('notes', i, 'isSustainNote') then
                setPropertyFromGroup('notes', i, 'scale.x', 0.5)
            else
                setPropertyFromGroup('notes', i, 'scale.x', 0.5)
                setPropertyFromGroup('notes', i, 'scale.y', 0.5)
            end
        end
    end
end

