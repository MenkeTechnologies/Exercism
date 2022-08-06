defmodule LogParser do
  def valid_line?(s) do
    s =~ ~r/^\[(DEBUG|INFO|WARNING|ERROR)\]/
  end
  def split_line(s) do
    String.split(s, ~r/\<[~\*=-]*\>/)
  end
  def remove_artifacts(s) do
    String.replace(s, ~r/end-of-line(\d+)/i, "")
  end
  def tag_with_user_name(s) do
    match = Regex.run(~r/User\s+(\S+)/, s)
    if match do
      "[USER] #{Enum.at(match, 1)} " <> s
    else
      s
    end
  end
end

