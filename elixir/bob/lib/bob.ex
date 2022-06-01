defmodule Bob do
  def hey(input) do
    nows = String.replace(input, ~r/[\s]/, "")

    cond do
      nows == "" ->
        "Fine. Be that way!"
      String.upcase(nows) == nows and String.downcase(nows) != nows ->
        case String.ends_with?(nows, "?") do
          true -> "Calm down, I know what I'm doing!"
          _ -> "Whoa, chill out!"
        end
      String.ends_with?(nows, "?") ->
        "Sure."
      true -> "Whatever."
    end
    
  end
end
