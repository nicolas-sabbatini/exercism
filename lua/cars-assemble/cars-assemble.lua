-- LUA 5.1
local cars = {}

local SINGLE_CAR_COST = 10000
local TEN_CAR_BUNDLE_COST = 95000

-- returns the amount of working cars produced by the assembly line every hour
function cars.calculate_working_cars_per_hour(production_rate, success_rate)
	return (production_rate * success_rate) / 100
end

-- returns the amount of working cars produced by the assembly line every minute
function cars.calculate_working_cars_per_minute(production_rate, success_rate)
	local working_cars = cars.calculate_working_cars_per_hour(production_rate, success_rate) / 60
	return math.floor(working_cars)
end

-- returns the cost of producing the given number of cars
function cars.calculate_cost(cars_count)
	local single_cars = math.fmod(cars_count, 10)
	local ten_car_bundle = math.floor(cars_count / 10)
	return single_cars * SINGLE_CAR_COST + ten_car_bundle * TEN_CAR_BUNDLE_COST
end

return cars
