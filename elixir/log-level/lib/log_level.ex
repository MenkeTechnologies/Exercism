defmodule LogLevel do
  def to_label(level, legacy?) do

    case {level, legacy?} do
      {0, false} -> :trace
      {1, _} -> :debug
      {2, _} -> :info
      {3, _} -> :warning
      {4, _} -> :error
      {5, false} -> :fatal
      _ -> :unknown
    end

  end

  def alert_recipient(level, legacy?) do

    lbl = to_label(level, legacy?)
    cond do
      lbl in [:error, :fatal] -> :ops
      lbl == :unknown and legacy? -> :dev1
      lbl == :unknown -> :dev2
      true -> false
    end

  end
end
