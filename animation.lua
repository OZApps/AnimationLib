--[[
 Filename 	: animation.lua
 Platform	: Gideros Studio
 Version	: 1.0
 Author		: Jayant C Varma / OZ Apps
 email		: dev@oz-apps.com
 URL		: http://www.oz-apps.com
--]]


animation = Core.class(Sprite)

function animation:init(imageName, frames, speed, theScale)
	self.isPlaying = true 
	self.texture = Texture.new(imageName)
	
	self.speed = speed or 4
	self.tick = 0
	
	self.scale = theScale or 1
	
	self.currFrame = 1
	self.frames = frames or 1
	self.frameWd = self.texture:getWidth() / self.frames
	self.frameHt = self.texture:getHeight()

	self.texRegion = TextureRegion.new(self.texture, 0, 0, self.frameWd, self.frameHt)

	self.sprite = Bitmap.new(self.texRegion)
	self.sprite:setScale(self.scale, self.scale)

	stage:addChild(self.sprite)
	
	self:addEventListener(Event.ENTER_FRAME, self.updateFrame, self)
	
	return self 
end 

function animation:updateFrame(theFrame)
	if self.isPlaying == false then return end 

	theFrame = theFrame or self.currFrame	
	self.tick = self.tick + 1
	if self.tick < self.speed then return end 
	
	self.tick = 0
	
	self.currFrame = self.currFrame + 1
	if self.currFrame > self.frames then
		self.currFrame = 1
	end 
	
	self:setFrame(self.currFrame)
end 

function animation:setFrame(theFrame)
	if theFrame < 1 then theFrame = 1 end 
	if theFrame > self.frames then theFrame = self.frames end 
	
	local _tex = self.texRegion
	local _wd, _ht = self.frameWd, self.frameHt
	_tex:setRegion((theFrame-1)* _wd, 0, _wd, _ht)
	self.sprite:setTextureRegion(_tex)
end 

function animation:play()
	self.isPlaying = true 
end 

function animation:pause()
	self.isPlaying = not self.isPlaying
end 

function animation:stop(atFrame)
	self.isPlaying = false 
	self.currFrame = atFrame or 1
	
	self:setFrame(self.currFrame)
end 

function animation:setPosition(xPos, yPos)
	self.sprite:setPosition(xPos or 0, yPos or 0)
end 

function animation:setX(xPos)
	self.sprite:setX(xPos or 0)
end 

function animation:setY(yPos)
	self.sprite:setY(yPos or 0)
end 

function animation:setAlpha(theAlpha)
	self.sprite:setAlpha(theAlpha)
end 

function animation:setScale(xScl, yScl)
	xScl = xScl or 1
	yScl = yScl or xScl
	
	self.sprite:setScale(xScl, yScl)
end 

function animation:setGroup(thisOne)
	thisOne:addChild(self.sprite)
end 


