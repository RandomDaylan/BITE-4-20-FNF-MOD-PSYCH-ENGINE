function onCreate()
    addCharacterToList('goldenfreddy', 'dad')
    addCharacterToList('foxy', 'dad')
    addCharacterToList('EVIL-BOCCHI', 'dad')
    setProperty('boyfriend.visible', true)
    setProperty('timeBar.visible', false)
    setProperty('scoreTxt.visible', false)

    setProperty('showRating', falsse)

    setProperty('showCombo', false)

    setProperty('showComboNum', false)

end

function onCreatePost()

    makeAnimatedLuaSprite('hola', 'vainacono', 453, 339)
    addAnimationByPrefix('hola', 'eu', 'eu', 24, true)
    addLuaSprite('hola', true)
    playAnim('hola', 'eu', true)
    setProperty('hola.alpha', 0)
    setObjectCamera('freddy', 'other')
    setObjectCamera('bonnie', 'other')
    setObjectCamera('itsme', 'other')
    setObjectCamera('itsme2', 'other')
    setObjectCamera('night7', 'other')
    setObjectCamera('power', 'other')
    setObjectCamera('night7', 'other')
    setObjectCamera('12', 'other')
    setObjectCamera('1', 'other')
    setObjectCamera('2', 'other')
    setObjectCamera('3', 'other')
    setObjectCamera('4', 'other')
    setObjectCamera('5', 'other')
    setObjectCamera('bar1', 'other')
    setObjectCamera('bar2', 'other')
    setObjectCamera('bar3', 'other')
    setObjectCamera('bar4', 'other')
    setObjectCamera('bar5', 'other')
    setObjectCamera('vidaText', 'other')
    setObjectCamera('boyfriend', 'other')

    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('scoreTxt.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('healthBar.visible', false)
    setProperty('healthBarBG.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)

    for i = 0, 3 do
        setPropertyFromGroup('playerStrums', i, 'x', 412 + (i * 112))
    end
end



