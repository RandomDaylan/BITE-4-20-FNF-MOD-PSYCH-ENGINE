function onEvent(name, value1, value2)
    if name == 'stagevents' then
    	if value1 == 'doorleft' then
    		if value2 == 'on' then
            	doTweenAlpha('buttondoorleftTween', 'buttondoorleft', 1, 0.07, 'cubeIn')
            	doTweenY('doorleftTween', 'doorleft', 1000, 0.35, 'cubeIn')
            	setVar('bateria', getVar('bateria') + 1)
    		end
    		if value2 == 'off' then
            	doTweenAlpha('buttondoorleftTween', 'buttondoorleft', 0, 0.07, 'cubeOut')
            	doTweenY('doorleftTween', 'doorleft', -1000, 0.35, 'cubeOut')
            	setVar('bateria', getVar('bateria') - 1)
    		end
    	end
    	if value1 == 'doorright' then
    		if value2 == 'on' then
            	doTweenAlpha('buttondoorrightTween', 'buttondoorright', 1, 0.07, 'cubeIn')
            	doTweenY('doorrightTween', 'doorright', 1000, 0.35, 'cubeIn')
            	setVar('bateria', getVar('bateria') + 1)
    		end
    		if value2 == 'off' then
            	doTweenAlpha('buttondoorrightTween', 'buttondoorright', 0, 0.07, 'cubeOut')
            	doTweenY('doorrightTween', 'doorright', -1000, 0.35, 'cubeOut')
            	setVar('bateria', getVar('bateria') - 1)
    		end
    	end
    	if value1 == 'itsme' then
    		setProperty('doorleft.alpha', 1)
            setProperty('doorright.alpha', 1)
            setProperty('buttondoorleft.alpha', 1)
            setProperty('buttondoorright.alpha', 1)
            setVar('bateria', 3)
    	end
    	if value1 == 'lightleft' then
    		if value2 == 'on' then
    		    setProperty('lightleft.alpha', 1)
            	setProperty('buttonlightleft.alpha', 1)
            	setVar('bateria', getVar('bateria') + 1)
    		end
    		if value2 == 'off' then
    		    setProperty('lightleft.alpha', 0)
            	setProperty('buttonlightleft.alpha', 0)
            	setVar('bateria', getVar('bateria') - 1)
    		end
    	end
    	if value1 == 'lightright' then
    		if value2 == 'on' then
    		    setProperty('lightleft.alpha', 1)
            	setProperty('buttonlightleft.alpha', 1)
            	setVar('bateria', getVar('bateria') + 1)
    		end
    		if value2 == 'off' then
    		    setProperty('lightleft.alpha', 0)
            	setProperty('buttonlightleft.alpha', 0)
            	setVar('bateria', getVar('bateria') - 1)
    		end
    	end
    end
end
