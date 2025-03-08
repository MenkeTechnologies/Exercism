#pragma once

#include <string>
#include <memory>
#include <utility>

using namespace std;

namespace troy {
    struct artifact {
        explicit artifact(string name) : name(std::move(name)) {}

        string name;
    };

    struct power {
        explicit power(string effect) : effect(std::move(effect)) {}

        string effect;
    };

    struct human {
        unique_ptr<artifact> possession{nullptr};
        shared_ptr<power> own_power{nullptr};
        shared_ptr<power> influenced_by{nullptr};

    };

    void give_new_artifact(human &human, const string &artifact_name);

    void manifest_power(human &human, const string &power_name);

    void exchange_artifacts(unique_ptr<artifact> &artifact1, unique_ptr<artifact> &artifact2);

    void use_power(human &human1, human &human2);

    int power_intensity(human &human);
}  
