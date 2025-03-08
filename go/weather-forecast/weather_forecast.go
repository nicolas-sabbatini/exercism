// Package weather prove herramientas para controlar el clima.
package weather

// CurrentCondition representa la ultima condición vista.
var CurrentCondition string

// CurrentLocation representa el nombre de la ultima ciudad visitada.
var CurrentLocation string

// Forecast obtenemos la condición de la ciudad.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
