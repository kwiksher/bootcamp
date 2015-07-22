_W = display.contentWidth
_H = display.contentHeight
print(_W..":".._H)

local sky = display.newImage( "sky.png" )
sky.x =_W/2
sky.y = _H/2

local ground = display.newImage( "ground.png" )
ground.x = _W/2
ground.y = _H-50

local crate = display.newImage( "crate.png" )
crate.x = _W/2; crate.y = 100; crate.rotation = 5

local physics = require( "physics" )
physics.start()
physics.addBody( ground, "static", { friction=0.5, bounce=0.3 } )
physics.addBody( crate, { density=3.0, friction=0.5, bounce=0.3 } )
