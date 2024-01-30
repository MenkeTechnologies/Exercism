#include "resistor_color.h"
#include <algorithm>

namespace resistor_color {
    vector<string> colorList = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey",
                                "white"};

    int color_code(string color) {
        return distance(colorList.begin(), find(colorList.begin(), colorList.end(), color));
    }

    vector<string> colors() {
        return colorList;
    }
}
