StartScene = Core.class(Sprite)

function StartScene:init()
	--[[local texture = Texture.new("images/ball.png", true)
	local bmp = Bitmap.new(texture)
	local button = Button.new(bmp)
	button:addEventListener("click", function()
		print("you clicked me")
	end)
	self:addChild(button)
	]]
	local bg = Bitmap.new(Texture.new("images/bg.png", true))
	bg:setAnchorPoint(0.5, 0.5)
	bg:setPosition(conf.width/2, conf.height/2)
	self:addChild(bg)
	
	local titleText = TextField.new(conf.fontLarge, "Slac-Man")
	titleText:setTextColor(0xffff00)
	local titleButton = Button.new(titleText)
	titleButton:setPosition(conf.width/3, 40)
	self:addChild(titleButton)
	
	local startText = TextField.new(conf.fontLarge, "Start Game")
	startText:setTextColor(0xffff00)
	local startButton = Button.new(startText)
	startButton:setPosition(conf.width/3, conf.height)
	startButton:addEventListener("click", function()
		sceneManager:changeScene("level", conf.transitionTime, conf.transition, conf.easing)
		end)
	self:addChild(startButton)
	
	local optionsText = TextField.new(conf.fontMedium, "Options")
	optionsText:setTextColor(0xffff00)
	local optionsButton = Button.new(optionsText)
	optionsButton:setPosition(50, conf.height)
	optionsButton:addEventListener("click", function()
		sceneManager:changeScene("options", conf.transitionTime, conf.transition, conf.easing)
		end)
	self:addChild(optionsButton)
	
	local aboutText = TextField.new(conf.fontMedium, "About")
	aboutText:setTextColor(0xffff00)
	local aboutButton = Button.new(aboutText)
	aboutButton:setPosition(conf.width - aboutButton:getWidth() - 50, conf.height)
	self:addChild(aboutButton)
	aboutButton:addEventListener("click", function()
		sceneManager:changeScene("about", conf.transitionTime, conf.transition, conf.easing)
		end)
	self:addChild(aboutButton)
	
	self:addEventListener(Event.KEY_DOWN, function(event)
		if event.keyCode == KeyCode.BACK then
			if application:getDeviceInfo() == "Android" then
				application:exit()
			end
		end
	end)
end