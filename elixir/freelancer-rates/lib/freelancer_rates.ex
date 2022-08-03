defmodule FreelancerRates do
  @daily_rate 8.0
  @monthly_billable_days 22

  def daily_rate(hourly_rate) do
    hourly_rate * @daily_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount) / 100
  end

  def daily_discounted(hourly_rate, discount) do
    hourly_rate
    |> daily_rate
    |> apply_discount(discount)
  end

  def monthly_rate(hourly_rate, discount) do
    (daily_discounted(hourly_rate, discount) * @monthly_billable_days)
    |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    (budget / daily_discounted(hourly_rate, discount))
    |> Float.floor(1)
  end
end
