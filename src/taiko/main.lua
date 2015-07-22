_W = display.contentWidth
_H = display.contentHeight
print(_W..":".._H)

local taiko = display.newImage("taiko.png")
taiko.x = _W/2
taiko.y = _H/2

local dai = display.newImage("dai.png")
dai.x = taiko.x
dai.y = taiko.contentBounds.yMax

local taikoSound = audio.loadSound("pon.wav")
-- audio.play(taikoSound)

function onTaikoTouch( event )
	if event.phase == "began" then
	    audio.play(taikoSound)
  else
	  	print(event.phase)
	end
end

taiko:addEventListener( "touch", onTaikoTouch )