#include <cmath>
#include "darts.h"

namespace darts {

    int score(float xHit, float yHit) {
        double dist = sqrt(pow(xHit, 2) + pow(yHit, 2));
        return dist <= 1 ? 10 :
        dist <= 5 ? 5 :
        dist <= 10 ? 1 : 0;
    }
}
