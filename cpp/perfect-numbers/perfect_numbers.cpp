#include <stdexcept>

#include "perfect_numbers.h"

namespace perfect_numbers {
	int aliquot(int n) {
		int sum = 0;
		for (int i = 1; i < n; ++i) {
			if (n % i == 0)
				sum += i;
		}
		return sum;
	}

	int classify(int n) {
		if (n < 1) throw std::domain_error("Positive non-zero integers only.");
		int sum = aliquot(n);
		return sum == n ? perfect : sum > n ? abundant : deficient;
	}
}

