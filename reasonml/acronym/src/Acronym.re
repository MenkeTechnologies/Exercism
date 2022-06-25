let abbreviate = s =>
  switch (s |> Js_string.match([%re {|/\b(\w)/g|}])) {
  | None => ""
  | Some(c) => c |> Js_array.joinWith("") |> String.uppercase_ascii
  };
