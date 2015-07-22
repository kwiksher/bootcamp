_W = display.contentWidth
_H = display.contentHeight
--------------------------------------------------------
-- 準備
--------------------------------------------------------
display.setStatusBar( display.HiddenStatusBar )
-- 物理、重力をゼロに
physics = require("physics")
physics.start()
physics.setGravity(0,0)

-- ランダム 0.0から1.0
function myRandom()
	return math.random(100)/100
end

-- BGMサウンド
ch1Stream = audio.loadStream("loop1.wav")
audio.play( ch1Stream, {loops=-1 } )

-- 衝突音
soundID = audio.loadSound( "beep.wav" )
playBeep = function()
  print("beep")
  audio.play( soundID )
end

-- タッチ処理で衝突音再生と衝撃力
function buttonFunc(event)
  print("tap")
  playBeep()
  event.target:applyLinearImpulse(10, 10, event.x, event.y)
end
--------------------------------------------------------
-- 中央の四角
--------------------------------------------------------
rect = display.newRect(_W/2, _H/2 , 100, 100)
rect:setStrokeColor(myRandom(), myRandom(), myRandom())
rect.strokeWidth = 10
rect:setFillColor(0, 0, 0, 0)
-- 色、衝突イベントの検知
rect:addEventListener("collision",
	function(event)
		rect:setFillColor(myRandom(), myRandom(), myRandom())
		playBeep()
	end)
--物理登録、センサータイプ
physics.addBody(rect, {isSensor = true})
--------------------------------------------------------
-- ４つの円
--------------------------------------------------------
group = display.newGroup()
group:insert(display.newCircle(_W/2,    50, 20))
group:insert(display.newCircle(_W/2, _H-50, 20))
group:insert(display.newCircle(  50,  _H/2, 20))
group:insert(display.newCircle(_W-50, _H/2, 20))
-- 色、タッチイベントの検知、物理登録
for i=1, group.numChildren do
  group[i]:setFillColor(myRandom(), myRandom(), myRandom())
  group[i]:addEventListener("tap", buttonFunc)
  physics.addBody(group[i])
end
--------------------------------------------------------
-- 壁
--------------------------------------------------------
rect1 = display.newRect(_W/2,    0, _W,  5)
rect2 = display.newRect(0,    _H/2,  5, _H)
rect3 = display.newRect(_W-5, _H/2,  5, _H)
rect4 = display.newRect(_W/2, _H-5, _W,  5)
-- 物理登録 静的物体
physics.addBody(rect1, "static")
physics.addBody(rect2, "static")
physics.addBody(rect3, "static")
physics.addBody(rect4, "static")
