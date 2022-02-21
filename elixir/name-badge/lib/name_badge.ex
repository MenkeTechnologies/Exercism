defmodule NameBadge do
  def print(id, name, dept) do
    dept = if dept, do: dept, else: "owner"
    prefix = if id, do: "[#{id}] - ", else: ""
    prefix <> "#{name} - #{String.upcase(dept)}"
  end
end
