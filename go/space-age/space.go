package space

// Planet string for testing and map key
type Planet string

var planetYears = map[Planet]float64{
	"Mercury": 7600530.24,
	"Venus":   19413907.2,
	"Earth":   31558149.76,
	"Mars":    59354294.4,
	"Jupiter": 374335776.0,
	"Saturn":  929596608.0,
	"Uranus":  2661041808.0,
	"Neptune": 5200418592.0,
}

func Age(seconds float64, planet Planet) float64 {
	return seconds / planetYears[planet]
}
