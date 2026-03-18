module Tests exposing (tests)

import Expect
import SecretHandshake exposing (Command(..))
import Test exposing (Test, describe, skip, test)


tests : Test
tests =
    describe "SecretHandshake"
        [ -- 
          test "wink for 1" <|
            \() ->
                SecretHandshake.commands 1
                    |> Expect.equal [ Wink ]
        , 
            test "double blink for 10" <|
                \() ->
                    SecretHandshake.commands 2
                        |> Expect.equal [ DoubleBlink ]
        , 
            test "close your eyes for 100" <|
                \() ->
                    SecretHandshake.commands 4
                        |> Expect.equal [ CloseYourEyes ]
        , 
            test "jump for 1000" <|
                \() ->
                    SecretHandshake.commands 8
                        |> Expect.equal [ Jump ]
        , 
            test "combine two actions" <|
                \() ->
                    SecretHandshake.commands 3
                        |> Expect.equal [ Wink, DoubleBlink ]
        , 
            test "reverse two actions" <|
                \() ->
                    SecretHandshake.commands 19
                        |> Expect.equal [ DoubleBlink, Wink ]
        , 
            test "reversing one action gives the same action" <|
                \() ->
                    SecretHandshake.commands 24
                        |> Expect.equal [ Jump ]
        , 
            test "reversing no actions still gives no actions" <|
                \() ->
                    SecretHandshake.commands 16
                        |> Expect.equal []
        , 
            test "all possible actions" <|
                \() ->
                    SecretHandshake.commands 15
                        |> Expect.equal [ Wink, DoubleBlink, CloseYourEyes, Jump ]
        , 
            test "reverse all possible actions" <|
                \() ->
                    SecretHandshake.commands 31
                        |> Expect.equal [ Jump, CloseYourEyes, DoubleBlink, Wink ]
        , 
            test "do nothing for zero" <|
                \() ->
                    SecretHandshake.commands 0
                        |> Expect.equal []
        ]
