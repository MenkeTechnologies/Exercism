package Lasagna;

use v5.38;

our $ExpectedMinutesInOven = 40;

sub remaining_minutes_in_oven ($actual_minutes_in_oven) {
    $ExpectedMinutesInOven - $actual_minutes_in_oven;
}

sub preparation_time_in_minutes ($number_of_layers) {
    $number_of_layers * 2;
}

sub total_time_in_minutes ( $number_of_layers, $actual_minutes_in_oven ) {
    preparation_time_in_minutes($number_of_layers) + $actual_minutes_in_oven;
}

sub oven_alarm () {
    "Ding!";
}
