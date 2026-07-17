function onCreate()
    local startX = -300
    local startY = 100
    local spacing = 75

    for i = 0, 3 do
        makeAnimatedLuaSprite('gfStrum'..i, 'NOTE_assets', startX + (spacing * i), startY)

        if i == 0 then
            addAnimationByPrefix('gfStrum0', 'static', 'arrowLEFT', 24, false)
            addAnimationByPrefix('gfStrum0', 'pressed', 'left press', 24, false)
            addAnimationByPrefix('gfStrum0', 'confirm', 'left confirm', 24, false)

        elseif i == 1 then
            addAnimationByPrefix('gfStrum1', 'static', 'arrowDOWN', 24, false)
            addAnimationByPrefix('gfStrum1', 'pressed', 'down press', 24, false)
            addAnimationByPrefix('gfStrum1', 'confirm', 'down confirm', 24, false)

        elseif i == 2 then
            addAnimationByPrefix('gfStrum2', 'static', 'arrowUP', 24, false)
            addAnimationByPrefix('gfStrum2', 'pressed', 'up press', 24, false)
            addAnimationByPrefix('gfStrum2', 'confirm', 'up confirm', 24, false)

        elseif i == 3 then
            addAnimationByPrefix('gfStrum3', 'static', 'arrowRIGHT', 24, false)
            addAnimationByPrefix('gfStrum3', 'pressed', 'right press', 24, false)
            addAnimationByPrefix('gfStrum3', 'confirm', 'right confirm', 24, false)
        end

        objectPlayAnimation('gfStrum'..i, 'static')

        setObjectCamera('gfStrum'..i, 'hud')
        scaleObject('gfStrum'..i, 0.5, 0.5)

        addLuaSprite('gfStrum'..i, true)
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    if noteType == 'GF Sing' then
        objectPlayAnimation('gfStrum'..direction, 'pressed', true)
    end
end

function onUpdate()

	for i = 0, getProperty('notes.length') - 1 do
	    if getPropertyFromGroup('notes', i, 'noteType') == 'GF Sing' then
	        local data = getPropertyFromGroup('notes', i, 'noteData')
	
	        local offset =
	            getProperty('gfStrum'..data..'.x') -
	            getPropertyFromGroup('opponentStrums', data, 'x') - 9
	
	        if getPropertyFromGroup('notes', i, 'isSustainNote') then
	            setPropertyFromGroup('notes', i, 'offsetX', offset + 38)
	        else
	            setPropertyFromGroup('notes', i, 'offsetX', offset)
	        end
	        local offsety =
	            getProperty('gfStrum'..data..'.y') -
	            getPropertyFromGroup('opponentStrums', data, 'y') - 9
	

	        setPropertyFromGroup('notes', i, 'offsetY', offsety)
	        
	    end
	end

    for i = 0, 3 do
        if getProperty('gfStrum'..i..'.animation.curAnim.finished') then
            if getProperty('gfStrum'..i..'.animation.curAnim.name') ~= 'static' then
                objectPlayAnimation('gfStrum'..i, 'static')
            end
        end
    end

    
end

