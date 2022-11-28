module Gigasecond exposing (add)

import Time exposing (..)

gigasecond = 10^9

add timestamp = posixToMillis timestamp + (gigasecond * 1000) |> millisToPosix
