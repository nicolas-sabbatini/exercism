local Hamming = {}

local function iterate_string(a, b)
	local a_chars = string.gmatch(a, ".")
	local b_chars = string.gmatch(b, ".")
	return function()
		return a_chars(), b_chars()
	end
end

function Hamming.compute(a, b)
	if #a ~= #b then
		return -1
	end
	local distance = 0
	for a_char, b_char in iterate_string(a, b) do
		if a_char ~= b_char then
			distance = distance + 1
		end
	end
	return distance
end

return Hamming
