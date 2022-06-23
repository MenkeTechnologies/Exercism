let alphabet =
  Array.make(26, 0)
  |> Array.mapi((i, _) => Char.chr(i + 65))
  |> Array.to_list;

let isPangram: string => bool = s => {
    let uc = s |> String.uppercase_ascii;
    alphabet |> List.for_all(uc |> String.contains);
}
