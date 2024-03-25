local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
	local number_str = tostring(number)
	local power = #number_str
	local sum = 0
	for digit in string.gmatch(number_str, ".") do
		sum = sum + tonumber(digit) ^ power
	end
	return sum == number
end

return ArmstrongNumbers
