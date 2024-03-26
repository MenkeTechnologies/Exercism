#pragma once

#include <string>

using std::string;

namespace vehicle_purchase {

    bool needs_license(string kind);

    string choose_vehicle(string option1, string option2);

    double calculate_resell_price(double original_price, double age);

}
