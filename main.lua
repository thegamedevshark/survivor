-- main.lua


function love.load()

	-- love
	love.graphics.setDefaultFilter("nearest", "nearest")
	love.graphics.setLineStyle("rough")

	local r, g, b = 29/255, 43/255, 83/255
	love.graphics.setBackgroundColor(r, g, b)


	-- libraries
	maid64 = require "bin.lib.maid64"
	maid64.setup(settings.screen.width, settings.screen.height)

	sprite = require "bin.lib.sprite"

	baton = require "bin.lib.baton"
	input = baton.new {
		controls = {
			left = {'key:left', 'key:a', 'axis:leftx-', 'button:dpleft'},
    		right = {'key:right', 'key:d', 'axis:leftx+', 'button:dpright'},
		    up = {'key:up', 'key:w', 'axis:lefty-', 'button:dpup'},
		    down = {'key:down', 'key:s', 'axis:lefty+', 'button:dpdown'},
		    action = {'key:x', 'button:a'},
		},
		pairs = {
		    move = {'left', 'right', 'up', 'down'}
	  	},
	  	joystick = love.joystick.getJoysticks()[1],
	}


	-- modules
	require "bin.mod.utils"
	game = require "bin.mod.game"

end


function love.update(dt)
	input:update()
	game:update(dt)
end


function love.draw()
	maid64.start()
	game:draw()
	maid64.finish()
end


function love.resize(w, h)
	maid64.resize(w, h)
end

