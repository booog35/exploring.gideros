AboutScene = Core.class(Sprite)

function AboutScene:init()
	print("inside about scene")
	
	local bg = Bitmap.new(Texture.new("images/bg.png", true))
	bg:setAnchorPoint(0.5, 0.5)
	bg:setPosition(conf.width/2, conf.height/2)
	self:addChild(bg)
	
	local backText = TextField.new(conf.fontMedium, "Back")
	backText:setTextColor(0xffff00)
	local backButton = Button.new(backText)
	backButton:setPosition((conf.width - backButton:getWidth())/2, conf.height)
	self:addChild(backButton)
	backButton:addEventListener("click", function()
		sceneManager:changeScene("start", conf.transitionTime, conf.transition, conf.easing) 
		end)
		
	self:addEventListener(Event.KEY_DOWN, function(event)
		if event.keyCode == KeyCode.BACK then
			sceneManager:changeScene("start", conf.transitionTime, conf.transition, conf.easing)
		end
		end)
		
	local aboutText = TextWrap.new("This is a sample app, the clone of Mashballs game, amde specifically for this book and is meant for the learning purpose",
	600, "justify", 5, conf.fontSmall)
	aboutText:setTextColor(0xffff00)
	aboutText:setPosition(100, 200)
	self:addChild(aboutText)
	
	local aboutHeading = TextField.new(conf.fontMedium, "About This Game")
	aboutHeading:setTextColor(0xffff00)
	aboutHeading:setPosition((conf.width - aboutHeading:getWidth())/2, 100)
	self:addChild(aboutHeading)
	
end