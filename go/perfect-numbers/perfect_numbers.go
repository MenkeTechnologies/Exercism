package perfect

import "errors"

var ErrOnlyPositive = errors.New("no!")

type Classification int

const (
	ClassificationDeficient Classification = iota
	ClassificationPerfect
	ClassificationAbundant
)

func Classify(n int64) (Classification, error) {
	if n <= 0 {
		return 0, ErrOnlyPositive
	}

	sum := int64(0)

	for i := int64(1); i < n; i++ {
		if n%i == 0 {
			sum += i
		}
	}

	if sum == n {
		return ClassificationPerfect, nil
	} else if sum < n {
		return ClassificationDeficient, nil
	} else {
		return ClassificationAbundant, nil
	}

}
