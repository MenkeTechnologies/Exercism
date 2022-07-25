module Bob exposing (hey)
import String exposing (toUpper, trim, isEmpty, any, endsWith)
import Char exposing (isAlpha)

isShouting s = (s |> any isAlpha) && (s == (s |> toUpper))
hey : String -> String
hey =
    trim >>
    (\ s ->
        case (endsWith "?" s, isShouting s, isEmpty s) of
            (_, _, True) -> "Fine. Be that way!"
            (True, False, False) -> "Sure."
            (False, True, False) -> "Whoa, chill out!"
            (True, True, False) -> "Calm down, I know what I'm doing!"
            _ -> "Whatever."
    )
