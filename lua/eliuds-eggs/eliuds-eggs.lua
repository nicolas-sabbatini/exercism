local EliudsEggs = {}

function EliudsEggs.egg_count(number)
	local count = 0
	while number > 0 do
		if math.fmod(number, 2) == 1 then
			count = count + 1
			number = number - 1
		end
		number = math.floor(number / 2)
	end
	return count
end

return EliudsEggs
