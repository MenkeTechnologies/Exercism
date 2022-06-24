let anagrams = (s, anagrams) => {
  let normalise = s => s
    |> String.lowercase_ascii
    |> Js.String.split("")
    |> Js.Array.sortInPlace
    |> Js.Array.joinWith("");

  List.filter(cand => normalise(s) == normalise(cand)
    && s!= String.uppercase_ascii(cand), anagrams);
};
