module [truncate]

import unicode.Grapheme

truncate = \s -> s |> Grapheme.split? |> List.takeFirst 5 |> Str.joinWith "" |> Ok
