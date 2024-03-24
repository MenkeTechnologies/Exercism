#include <cmath>

double daily_rate(double hourly_rate) { 
    return hourly_rate * 8.0;
}

double apply_discount(double before_discount, double discount) {
    return before_discount * (1.0 - discount * 0.01);
}

int monthly_rate(double hourly_rate, double discount) {
    return ceil(apply_discount(daily_rate(hourly_rate) * 22.0, discount));
}

int days_in_budget(int budget, double hourly_rate, double discount) {
    return floor(budget / apply_discount(daily_rate(hourly_rate), discount));
}
