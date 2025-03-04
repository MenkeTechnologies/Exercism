#pragma once
#include <string>
#include <vector>

using namespace std;

namespace speedywagon {
    struct pillar_men_sensor {
        int activity;
        string location;
        vector<int> data;
    };
    bool connection_check(pillar_men_sensor*);
    int activity_counter(pillar_men_sensor*, unsigned);
    bool alarm_control(pillar_men_sensor*);
    bool uv_alarm(pillar_men_sensor*);
    int uv_light_heuristic(std::vector<int>* data_array);
}  
