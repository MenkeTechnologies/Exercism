defmodule PrimeFactors do
  def factors_for(number) when number < 2, do: []

  def factors_for(number) do
    Stream.unfold(
      {number, 2},
      fn
        {1, _} ->
          nil
        {n, d} ->
          d = next_divisor(n, d)
          {d, {div(n, d), d}}
      end
    )
    |> Enum.to_list()
  end

  defp next_divisor(n, d) when rem(n, d) == 0, do: d
  defp next_divisor(n, d) when d * d > n, do: n
  defp next_divisor(n, d), do: next_divisor(n, d + 1)
end
