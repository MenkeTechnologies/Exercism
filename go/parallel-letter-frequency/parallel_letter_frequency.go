package letter

// FreqMap records the frequency of each rune in a given text.
type FreqMap map[rune]int

// Frequency counts the frequency of each rune in a given text and returns this
// data as a FreqMap.
func Frequency(s string) FreqMap {
	m := FreqMap{}
	for _, r := range s {
		m[r]++
	}
	return m
}

func ConcurrentFrequency(input []string) FreqMap {

	c := make(chan FreqMap, len(input))
	m := FreqMap{}

	for _, val := range input {
		go func(v string) {
			c <- Frequency(v)

		}(val)
	}

	for range input {
		var mapped = <-c
		for k, v := range mapped {

			m[k] += v
		}
	}

	return m

}
