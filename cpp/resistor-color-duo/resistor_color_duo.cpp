#include "resistor_color_duo.h"

namespace resistor_color_duo {
    map<string, int> data{{"black", 0}, {"brown", 1}, {"red", 2}, {"orange", 3}, {"yellow", 4}, {"green", 5}, {"blue", 6}, {"violet", 7}, {"grey", 8}, {"white", 9}};
    int value(vector<string> color){
        auto one = data.find(color[0]);
        auto two = data.find(color[1]);
        int num = one->second * 10 + two->second;
        return num;
    }
}
