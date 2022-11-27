module PhoneNumber exposing (getNumber)
import String exposing (length, slice, filter, fromList, toList)
import Char exposing (isDigit)
import Maybe exposing (andThen)


getNumber = digitsStripIntl
    >> andThen (validateNumber)
    >> andThen (validateDigitAt 0)
    >> andThen (validateDigitAt 3)

digitsStripIntl phoneNumber =
    let digits = phoneNumber |> filter isDigit
    in case digits |> toList of
            '1' :: rest -> Just (fromList rest)
            _ -> Just digits

validateNumber phoneNumber =
    case length phoneNumber of
        10 -> Just phoneNumber
        _  -> Nothing

validateDigitAt pos phoneNumber =
    case phoneNumber |> slice pos (pos + 1) of
        "0" -> Nothing
        "1" -> Nothing
        _   -> Just phoneNumber
