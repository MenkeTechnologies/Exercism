defmodule Gigasecond do
  def from({{year, month, day}, {hours, minutes, seconds}}) do
    with dt <-
           NaiveDateTime.new!(Date.new!(year, month, day), Time.new!(hours, minutes, seconds))
           |> NaiveDateTime.add(Integer.pow(10, 9), :second),
         do: {{dt.year, dt.month, dt.day}, {dt.hour, dt.minute, dt.second}}
  end
end
