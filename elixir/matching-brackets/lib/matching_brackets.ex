defmodule MatchingBrackets do
  @brackets %{"[" => "]", "(" => ")", "{" =>"}" }
  
  def check_brackets(""), do: true
  def check_brackets(s), do:
    s
    |> String.replace(~r/[^(){}[\]]/, "")
    |> String.codepoints()
    |> do_find_pairs()
    |> Enum.empty?()
  defp do_find_pairs(chars), do:
    Enum.reduce(chars, [], fn bracket, acc ->
      cond do
        bracket in Map.keys(@brackets) -> [bracket | acc]
        bracket == @brackets[Enum.at(acc, 0)] -> List.delete_at(acc, 0)
        true -> [:error | acc]
      end
    end)
end
