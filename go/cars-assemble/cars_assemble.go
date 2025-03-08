package cars

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * (successRate / 100.0)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(CalculateWorkingCarsPerHour(productionRate, successRate)) / 60
}

const sigleCost = 10_000
const bundleCost = 95_000
const bundleSize = 10

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	totalBundles := carsCount / bundleSize
	totalSingles := carsCount % bundleSize
	return uint(totalBundles*bundleCost + totalSingles*sigleCost)
}
