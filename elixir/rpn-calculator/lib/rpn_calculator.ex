defmodule RPNCalculator do
  def calculate!(stk, op), do: op.(stk)

  def calculate(stk, op, flag \\ :default) do
    try do
      {:ok, op.(stk)}
    rescue
      e -> if flag == :verbose, do: {:error, e.message}, else: :error
    end
  end

  def calculate_verbose(stk, op), do: calculate(stk, op, :verbose)

end
