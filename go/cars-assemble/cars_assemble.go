package cars

const CPC = 10_000
const CPT = 95_000

func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * successRate / 100
}

func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(CalculateWorkingCarsPerHour(productionRate, successRate) / 60)
}

func CalculateCost(count int) uint {
	return uint(count/10*CPT + count%10*CPC)
}
