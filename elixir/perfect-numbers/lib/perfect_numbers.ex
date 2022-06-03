defmodule PerfectNumbers do
  def classify(n) do
    cond do
      n < 1 -> {:error, "Classification is only possible for natural numbers."}
      n == 1 -> {:ok, :deficient}
      true -> 1..div(n, 2)
              |> Stream.filter(&(rem(n, &1) === 0))
              |> Enum.to_list()
              |> Enum.sum
              |> classifier(n)
    end
  end

  defp classifier(acc, n) do
    cond do
      acc == n -> {:ok, :perfect}
      acc < n -> {:ok, :deficient}
      true -> {:ok, :abundant}
    end
  end
end
