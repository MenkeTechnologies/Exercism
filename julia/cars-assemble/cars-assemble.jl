success_rate(speed) = speed == 0 ? 0 : speed <= 4 ? 1 : speed <= 8 ? .9 : speed ==9 ? .8 : .77

production_rate_per_hour(speed) = 221 * speed * success_rate(speed)

working_items_per_minute(speed) = div(production_rate_per_hour(speed), 60) |> Int
