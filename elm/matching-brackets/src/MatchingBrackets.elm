module MatchingBrackets exposing (isPaired)

import Dict exposing (fromList, get, values)
import List exposing (member, isEmpty)

brackets = fromList
        [ ( '(', ')' )
        , ( '[', ']' )
        , ( '{', '}' )
        ]

isPaired input =
    let
        aux s stk =
            case String.uncons s of
                Just ( head, tail ) ->
                    case get head brackets of
                        Just closingBracket ->
                            aux tail (closingBracket :: stk)
                        Nothing ->
                            if member head (values brackets) then
                                case stk of
                                    [] -> False
                                    x :: xs -> if head == x then
                                            aux tail xs
                                        else False
                            else aux tail stk
                Nothing -> isEmpty stk
    in aux input []

