module Tests exposing (tests)

import Expect
import PascalsTriangle exposing (rows)
import Test exposing (..)


tests : Test
tests =
    describe "Triangle"
        [ test "no rows" <|
            \() ->
                Expect.equal [] (rows 0)
        , 
            test "single row" <|
                \() ->
                    Expect.equal [ [ 1 ] ] (rows 1)
        , 
            test "two rows" <|
                \() ->
                    Expect.equal [ [ 1 ], [ 1, 1 ] ] (rows 2)
        , 
            test "three rows" <|
                \() ->
                    Expect.equal [ [ 1 ], [ 1, 1 ], [ 1, 2, 1 ] ] (rows 3)
        , 
            test "four rows" <|
                \() ->
                    Expect.equal [ [ 1 ], [ 1, 1 ], [ 1, 2, 1 ], [ 1, 3, 3, 1 ] ] (rows 4)
        , 
            test "negative rows" <|
                \() ->
                    Expect.equal [] (rows -1)
        ]
