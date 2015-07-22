_W = display.contentWidth
_H = display.contentHeight
print(_W)
print(_H)

local cloud = display.newImage("cloud.jpg")
cloud.x, cloud.y = _W/2, _H/2

local line = display.newLine(0, _H*0.1, _W, _H*0.1)
line.strokeWidth = 2
line:setStrokeColor(1,0,0)

local text = display.newText("描画いろいろ", _W/2, line.y-12, native.systemFont,24)
local rect = display.newRect(_W/2, _H/2, 600, 600)
rect:setFillColor(0,1,1,0.2)
rect.strokeWidth = 2
rect:setStrokeColor(0,0,1,0.2)

local rect = display.newRoundedRect(_W/2, _H/2, 600, 600,10)
rect:setFillColor(0,1,1,0.2)
rect.strokeWidth = 2
rect:setStrokeColor(0,0,1,0.2)

local circle = display.newCircle(_W/2, _H/2, 300)
circle:setFillColor(0,0,1,0.2)

local text1 = display.newText("Bootcamp", _W/2, _H/2, native.systemFont, 100)
text1:setFillColor( 0.2, 0.6, 0.1 )

local text11 = display.newText(text1.text, text1.contentBounds.xMin,text1.contentBounds.yMax, native.systemFont, 50)
text11.rotation = 45
text11.anchorX = 0
text11:scale(1.5,1.5)

local text12 = display.newText(text1.text, text1.contentBounds.xMax,text1.contentBounds.yMin, native.systemFont, 50)
text12.anchorX = 1
text12.anchorY = 0
text12.rotation = 45

