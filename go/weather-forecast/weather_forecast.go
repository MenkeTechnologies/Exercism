// Package weather description.
package weather

// CurrentCondition string.
var CurrentCondition string

// CurrentLocation string.
var CurrentLocation string

// Forecast function.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
