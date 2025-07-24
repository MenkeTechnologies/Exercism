exchange_money = /
get_change = -
get_value_of_bills = *
get_number_of_bills = ÷
get_leftover_of_bills = %

function exchangeable_value(budget, exchange_rate, spread, denomination)
    get_value_of_bills(get_number_of_bills(exchange_money(budget, (1 + spread / 100) * exchange_rate), denomination), denomination)
end
