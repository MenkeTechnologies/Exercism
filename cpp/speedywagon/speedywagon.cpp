#include "speedywagon.h"

namespace speedywagon {
    bool connection_check(pillar_men_sensor *sensor) { return sensor; }

    int activity_counter(pillar_men_sensor *arr, unsigned capacity) {
        int sum{0};
        for (unsigned i = 0; i < capacity; ++i) { sum += arr[i].activity; }
        return sum;
    }

    bool alarm_control(pillar_men_sensor *sensor) { return connection_check(sensor) and sensor->activity > 0; }

    bool uv_alarm(pillar_men_sensor *sensor) {
        return connection_check(sensor) and uv_light_heuristic(&sensor->data) > sensor->activity;
    }

    int uv_light_heuristic(std::vector<int> *data_array) {
        double avg{};
        for (auto element: *data_array) {
            avg += element;
        }
        avg /= data_array->size();
        int uv_index{};
        for (auto element: *data_array) {
            if (element > avg) ++uv_index;
        }
        return uv_index;
    }
}
