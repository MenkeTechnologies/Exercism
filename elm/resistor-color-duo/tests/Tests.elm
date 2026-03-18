module Tests exposing (tests)

import Expect
import ResistorColorDuo exposing (Color(..), value)
import Test exposing (Test, describe, skip, test)


tests : Test
tests =
    describe "ResistorColorDuo"
        [ test "Brown and black" <|
            \() ->
                ResistorColorDuo.value [ Brown, Black ]
                    |> Expect.equal 10
        , 
            test "Blue and grey" <|
                \() ->
                    ResistorColorDuo.value [ Blue, Grey ]
                        |> Expect.equal 68
        , 
            test "Yellow and violet" <|
                \() ->
                    ResistorColorDuo.value [ Yellow, Violet ]
                        |> Expect.equal 47
        , 
            test "White and red" <|
                \() ->
                    ResistorColorDuo.value [ White, Red ]
                        |> Expect.equal 92
        , 
            test "Orange and orange" <|
                \() ->
                    ResistorColorDuo.value [ Orange, Orange ]
                        |> Expect.equal 33
        , 
            test "Ignore additional colors" <|
                \() ->
                    ResistorColorDuo.value [ Green, Brown, Orange ]
                        |> Expect.equal 51
        , 
            test "Black and brown, one-digit" <|
                \() ->
                    ResistorColorDuo.value [ Black, Brown ]
                        |> Expect.equal 1
        ]
