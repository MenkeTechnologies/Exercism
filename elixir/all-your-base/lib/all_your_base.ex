defmodule AllYourBase do
  def convert(_, _, output_base) when output_base < 2, do: {:error, "output base must be >= 2"}
  def convert(_, input_base, _) when input_base < 2, do: {:error, "input base must be >= 2"}
  def convert([], _, _), do: {:ok, [0]}

  def convert(digits, input_base, output_base) do
    cond do
      Enum.any?(digits, & &1 < 0 or &1 >= input_base) ->
        {:error, "all digits must be >= 0 and < input base"}

      true ->
        digits
        |> Enum.reduce(0, & &2 * input_base + &1)
        |> do_digits([], output_base)
        |> then(&{:ok, &1})
    end
  end

  defp do_digits(0, acc, _), do: if(Enum.empty?(acc), do: [0], else: acc)

  defp do_digits(d, acc, output_base) when d > 0 do
    do_digits(div(d, output_base), [rem(d, output_base) | acc], output_base)
  end
end
