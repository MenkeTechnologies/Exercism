module [reverse]

import unicode.Grapheme

reverse = \s ->
    s
    |> Grapheme.split
    |> Result.with_default []
    |> List.reverse
    |> Str.join_with ""
