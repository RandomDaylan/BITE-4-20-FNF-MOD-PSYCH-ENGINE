local camX
local camY



if curStage == 'bitencorenew' then
	camX = 720
	camY = 450
end
if curStage == 'bitencore' then
	camX = 645
	camY = 346
end


function onCreate()
    setProperty('isCameraOnForcedPos', true)
    setCameraFollowPoint(camX, camY)
end

function onUpdate()
    setCameraFollowPoint(camX, camY)
end

function onSongStart()
    doTweenX('camMove', 'camTween', 720, 0.0000001, 'cubeOut')
end
