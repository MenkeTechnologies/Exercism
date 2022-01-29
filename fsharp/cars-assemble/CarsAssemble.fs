module CarsAssemble

let successRate (speed: int): float =
    if speed >= 10 then 0.77
    elif speed >= 9 then 0.8
    elif speed >= 5 then 0.9
    elif speed >= 1 then 1
    else 0

let productionRatePerHour (speed: int): float = float(speed * 221) * successRate speed

let workingItemsPerMinute (speed: int): int =
    productionRatePerHour speed / 60.0 |> floor |> int
