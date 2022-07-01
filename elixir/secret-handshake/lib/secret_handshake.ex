use Bitwise

defmodule SecretHandshake do
  @messages %{
    1 => "wink",
    2 => "double blink",
    4 => "close your eyes",
    8 => "jump",
  }
  def commands(mask) do
    result = @messages |>
    Map.filter(fn {k,_} -> (k &&& mask) > 0 end) |> Map.values
    mask > 16 && Enum.reverse(result) || result
  end
end
