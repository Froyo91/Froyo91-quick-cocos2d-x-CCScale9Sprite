local MainScene = class("MainScene", function()
	return display.newScene("MainScene")
end)

function MainScene:ctor()
	
end

function MainScene:onEnter()
	
	local b = display.newSprite("a.png")
	local size = b:getContentSize()

	--获取图片的总尺寸
	local rect = CCRectMake(0, 0, size.width, size.height)

	--获取CCScale9Sprite这种方式居中显示的区域尺寸
	local purpose = CCRectMake(30, 30, size.width - 30*2, size.height - 30*2)
	
	local a = CCScale9Sprite:create("a.png", rect, purpose)
	
	--设置最终图片显示的尺寸
	a:setContentSize(CCSizeMake(200,200))
	
	a:setPosition(display.cx, display.cy)
	self:addChild(a)

	-- local a = display.newSprite("a.png")
	-- a:setScale(1.5)
	-- a:setPosition(display.cx, display.cy)
	-- self:addChild(a)
end

return MainScene