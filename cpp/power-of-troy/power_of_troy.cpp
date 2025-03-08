#include "power_of_troy.h"

namespace troy {
    void give_new_artifact(human &human, const string &artifact_name) {
        human.possession = make_unique<artifact>(artifact_name);
    }

    void manifest_power(human &human, const string& power_name) {
        human.own_power = make_shared<power>(power_name);
    }

    void exchange_artifacts(unique_ptr<artifact> &artifact1, unique_ptr<artifact> &artifact2) {
        swap(artifact1, artifact2);
    }

    void use_power(human &human1, human &human2) {
        human2.influenced_by = human1.own_power;
    }

    int power_intensity(human &human) {
        return human.own_power.use_count();
    }
}
