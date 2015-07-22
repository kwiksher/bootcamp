local bombSound = audio.loadSound( "bomb.wav" )
local tickSound = audio.loadSound( "tick.wav" )

local function bombExplode( event )
 print(event.name)
 audio.play(bombSound)
end

audio.play( tickSound, { onComplete=bombExplode } )

local counter = display.newText("5", 100,100, native.systemFont, 50)

local function counterText()
   counter.text = counter.text - 1
end
timer.performWithDelay( 1000, counterText, 5 )

