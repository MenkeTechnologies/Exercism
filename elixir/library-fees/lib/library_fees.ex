defmodule LibraryFees do
  @days_in_seconds 24 * 60 * 60

  def datetime_from_string(string) do
    NaiveDateTime.from_iso8601!(string)
  end

  def before_noon?(datetime) do
    datetime.hour < 12
  end

  def return_date(checkout_datetime) do
    return_at =
      if before_noon?(checkout_datetime), do: 28 * @days_in_seconds, else: 29 * @days_in_seconds
    checkout_datetime
    |> NaiveDateTime.add(return_at, :seconds)
    |> NaiveDateTime.to_date()
  end

  def days_late(planned_return_date, actual_return_datetime) do
    actual_return_datetime
    |> NaiveDateTime.to_date()
    |> Date.diff(planned_return_date)
    |> case do
      days when days <= 0 -> 0
      days -> days
    end
  end

  def monday?(datetime) do
    Date.day_of_week(NaiveDateTime.to_date(datetime)) == 1
  end

  def calculate_late_fee(checkout, return, rate) do
    return_datetime = datetime_from_string(return)
    checkout_datetime = datetime_from_string(checkout)
    rate = if monday?(return_datetime), do: rate * 0.5, else: rate
    checkout_datetime
    |> return_date()
    |> days_late(return_datetime)
    |> Kernel.*(rate)
    |> trunc()
  end
end
