-- define scenes
sceneManager = SceneManager.new({
	--list all your scenes here
	--start sceneManager
	["start"] = StartScene,
	--about scene
	["about"] = AboutScene,
	--options scene
	["options"] = OptionsScene,
	--level scene
	["level"] = LevelScene,
})
--add manager to stage
stage:addChild(sceneManager)

--go to start scene
sceneManager:changeScene("start", conf.transitionTime, conf.transition, conf.easing)

sets = Settings.new()

print(conf.dy, conf.height)