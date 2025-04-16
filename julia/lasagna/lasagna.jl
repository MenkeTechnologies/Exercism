const expected_bake_time = 60

const preparation_time(layers) = 2 * layers

const remaining_time(time_in_oven) = expected_bake_time - time_in_oven

const total_working_time(layers, time_in_oven) = preparation_time(layers) + time_in_oven
