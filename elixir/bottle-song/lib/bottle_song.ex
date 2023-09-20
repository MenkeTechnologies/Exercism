defmodule BottleSong do
  @numbers %{0 => "no", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten"}

  def recite(start, take_down) when is_integer(start) and start > 0 and is_integer(take_down) and take_down > 0 do
    start..(start - take_down + 1)//-1
    |> Enum.map(&verse/1)
    |> Enum.join("\n\n")
  end

  defp verse(start) do
    "#{bottles(start) |> String.capitalize()} hanging on the wall,\n"
    |> String.duplicate(2)
    |> Kernel.<>("And if one green bottle should accidentally fall,\n")
    |> Kernel.<>("There'll be #{bottles(start - 1)} hanging on the wall.")
  end

  defp bottles(n), do: "#{@numbers[n]} green bottle" <> if(n == 1, do: "", else: "s")
end
