#include "triangle.h"
#include <stdexcept>
#include <vector>
#include <set>
#include <algorithm>

namespace triangle {

    using namespace std;

    flavor kind(double a, double b, double c) {
        vector<double> sorted = {a, b, c};
        sort(sorted.begin(), sorted.end());
        set<double> set = {a, b, c};

        for (auto d: sorted) {
            if (d <= 0) throw domain_error("Negative side lengths illegal!");
        }
        if (sorted[0] + sorted[1] < sorted[2]) {
            throw domain_error("Triangle violates triangle inequality.");
        }

        if (set.size() == 1) return flavor::equilateral;
        if (set.size() == 2) return flavor::isosceles;
        return flavor::scalene;

    }


}
