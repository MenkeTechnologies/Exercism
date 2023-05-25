[
  (.number_of_layers // 1) * 2,
  .actual_minutes_in_oven // 0
] as [
  $preparation_time,
  $actual_minutes_in_oven
] | {
  expected_minutes_in_oven: 40,
  remaining_minutes_in_oven: (40 - $actual_minutes_in_oven),
  preparation_time: $preparation_time,
  total_time: ($actual_minutes_in_oven + $preparation_time),
}

