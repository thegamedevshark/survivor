-- player.lua


player = {

	-- variables
	x = settings.screen.width / 2,
	y = settings.screen.height / 2,

	speed = 100,

	gfx = sprite("bin/gfx/knight.ase"),


	-- functions
	update = function(self, dt)
		local dx, dy = normalize(input:get "move")
		self.x = self.x + dx * self.speed * dt
		self.y = self.y + dy * self.speed * dt

		self.gfx:update(dt)
	end,


	draw = function(self)
		self.gfx:draw(self.x, self.y)
	end,

}


return player
