return {
    calculate_working_cars_per_hour = function(n, r) return n * r / 100 end,
    calculate_working_cars_per_minute = function(n, r) return (n * r / 100) // 60 end,
    calculate_cost = function(n) return 95000 * (n // 10) + 10000 * (n % 10) end
}
