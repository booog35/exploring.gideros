local testbg = Bitmap.new(Texture.new("images/800x480.png", true))
stage:addChild(testbg)

local dx = application:getLogicalTranslateX()/application:getLogicalScaleX()
local dy = application:getLogicalTranslateY()/application:getLogicalScaleY()

local ball = Bitmap.new(Texture.new("images/ball.png", true))
ball:setPosition(-dx,-dy)
stage:addChild(ball)

print (application:getLogicalTranslateY(), application:getLogicalScaleY())