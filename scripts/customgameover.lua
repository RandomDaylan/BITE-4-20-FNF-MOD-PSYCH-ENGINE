local deathType = 0

local deaths = {
    [0] = {'golden', 'golden'},
    [1] = {'death2', 'sound2'},
    [2] = {'death3', 'sound3'},
    [3] = {'death4', 'sound4'}
}
function onCreate()
    setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', '')
    setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', '')
    setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', '')
end
function onGameOverStart()
    local data = deaths[deathType]

    makeLuaSprite('gameoverImg', data[1], 0, 0)
    setObjectCamera('gameoverImg', 'other')
    addLuaSprite('gameoverImg', true)

    playSound(data[2])

    return Function_Stop
end