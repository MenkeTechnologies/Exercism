namespace Acronym

def abbreviate (s : String) : String :=
  s.toUpper.splitToList (fun c => c == ' ' || c == '_' || c == '-')
  |> .filter (·.isEmpty.not)
  |> .map (·.front)
  |> String.mk
  
end Acronym