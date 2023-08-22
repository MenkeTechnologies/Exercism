pub fn expected_minutes_in_oven() -> Int { 40 }

pub fn remaining_minutes_in_oven(n: Int) -> Int { expected_minutes_in_oven() - n }

pub fn preparation_time_in_minutes(layers: Int) -> Int { layers * 2 }

pub fn total_time_in_minutes(layers, oven_time: Int) -> Int { preparation_time_in_minutes(layers) + oven_time }

pub fn alarm() -> String { "Ding!" }
