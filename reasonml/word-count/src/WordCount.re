open Belt;
let wordCount = input => {
  let dict = Js.Dict.empty();
  let words = input |> Js.String.trim |> Js.String.splitByRe([%re {|/\s+/|} ]);

  Array.forEach(words, word =>
    switch (word) {
    | None => ()
    | Some(word) =>
      let word = word
        |> Js.String.toLowerCase
        |> Js.String.replaceByRe([%re {| /^\W*/ |} ], "")
        |> Js.String.replaceByRe([%re {| /\W*$/ |} ], "");
      Js.Dict.set(dict, word, Option.getWithDefault(Js.Dict.get(dict, word), 0) + 1);
    }
  );
  dict;
};

