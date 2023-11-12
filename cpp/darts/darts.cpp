#include <cmath>
#include "darts.h"

namespace darts {

    int score(float x, float y) {
        double dist = sqrt(pow(x, 2) + pow(y, 2));
        return dist <= 1 ? 10 : dist <= 5 ? 5 : dist <= 10 ? 1 : 0;
    }
}
