module Bob exposing (hey)

import Regex exposing (replace, contains, fromString)
import String exposing (isEmpty, endsWith, trim)

hey : String -> String
hey remark =
    let nows = replace(fromString "\s")
    if contains (fromString "[A-Z]")
