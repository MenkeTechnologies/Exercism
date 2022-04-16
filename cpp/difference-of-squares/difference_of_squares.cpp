#include "difference_of_squares.h"

namespace difference_of_squares {

    int sum_of_squares(int n) {

        int sum = 0;
        for (int i = 1; i <= n; ++i) {
            sum += pow(i, 2);
        }

        return sum;
    }

    int square_of_sum(int n) {
        int sum = 0;
        for (int i = 1; i <= n; ++i) {
            sum += i;
        }

        return pow(sum, 2);
    }

    int difference(int n) {
        return square_of_sum(n) - sum_of_squares(n);
    }


}
