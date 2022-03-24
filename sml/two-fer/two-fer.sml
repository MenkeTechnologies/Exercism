fun name (input: string option): string =
  let val you = case input of
      SOME i => i
      | NONE => "you"
  in
      "One for " ^ you ^ ", one for me."
  end
