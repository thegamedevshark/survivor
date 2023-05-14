-- game.lua


game = {
	-- modules
	player = require "bin.mod.player",


	-- variables
	active = true,


	-- functions
	update = function(self, dt)
		player:update(dt)
	end,


	draw = function(self)
		player:draw()
	end,
}


return game