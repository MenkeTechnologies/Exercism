#include <cmath>
#include "darts.h"

namespace darts {

    int score(float xHit, float yHit) {
        float dist = sqrt(pow(xHit, 2) + pow(yHit, 2));
        if (dist <= 1) return 10;
        if (dist <= 5) return 5;
        if (dist <= 10) return 1;
        return 0;
    }
}
