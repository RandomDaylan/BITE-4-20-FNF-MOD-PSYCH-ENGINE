function goodNoteHit(id, direction, noteType, isSustainNote)

    if noteType == 'markoNote' then

        callMethod('boyfriend.playAnim', {'scream', true})
        setProperty('boyfriend.specialAnim', true)

    end
end