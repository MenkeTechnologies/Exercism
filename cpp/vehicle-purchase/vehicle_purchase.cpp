#include "vehicle_purchase.h"

using std::string;

namespace vehicle_purchase {
    bool needs_license(string kind) {
        return kind == "car" || kind == "truck";
    }

    std::string choose_vehicle(string option1, string option2) {
        return option1 < option2 ? option1 + " is clearly the better choice." : option2 +
                                                                                  " is clearly the better choice.";
    }

    double calculate_resell_price(double original_price, double age) {
        return age < 3 ? original_price * 0.8 : age >= 10 ? original_price * 0.5 : original_price * 0.7;
    }
}
