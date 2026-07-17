local marknotes = 0

function onEvent(name, value1, value2)
    if name == 'mark' then
        if value1 == 'left' then
            doTweenX('boyfriendTween', 'boyfriend', getProperty('boyfriend.x') - 950, 1, 'cubeOut')
            setProperty('boyfriend.flipX', false)
            marknotes = 0
        end
        if value1 == 'right' then
            doTweenX('boyfriendTween', 'boyfriend', getProperty('boyfriend.x') + 950, 1, 'cubeOut')
            setProperty('boyfriend.flipX', true)
            marknotes = 1
        end
        if value1 == 'asustaon' then
           setProperty('boyfriend.idleSuffix', '-alt')
           boyfriendDance()
        end
    end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
    if marknotes == 1 then
        if direction == 0 then -- LEFT
            characterPlayAnim('boyfriend', 'singRIGHT', true)
        elseif direction == 3 then -- RIGHT
            characterPlayAnim('boyfriend', 'singLEFT', true)
        end
        
        setProperty('boyfriend.specialAnim', true)
    end
end

