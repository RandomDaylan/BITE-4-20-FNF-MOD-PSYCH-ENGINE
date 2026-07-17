
function goodNoteHit(id, direction, noteType, isSustainNote)
    if debugPrint(getProperty('marknotes')) == 1 then
        if direction == 0 then -- LEFT
            characterPlayAnim('boyfriend', 'singRIGHT', true)
        elseif direction == 3 then -- RIGHT
            characterPlayAnim('boyfriend', 'singLEFT', true)
        end
        
        setProperty('boyfriend.specialAnim', true)
    end
end
