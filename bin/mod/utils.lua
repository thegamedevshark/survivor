-- utils.lua


function distance(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end


function normalize(x, y)
	local length = math.sqrt(x^2 + y^2)
	if length > 0 then
		x = x / length
		y = y / length
		return x, y
	end
	return 0, 0
end


function direction(x1, y1, x2, y2)
    local dx, dy = x2 - x1, y2 - y1
    return normalize(dx, dy)
end


return utils