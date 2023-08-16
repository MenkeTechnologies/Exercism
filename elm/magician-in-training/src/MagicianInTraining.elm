module MagicianInTraining exposing (..)

import Array exposing (Array)

getCard : Int -> Array Int -> Maybe Int
getCard = Array.get

setCard : Int -> Int -> Array Int -> Array Int
setCard = Array.set

addCard : Int -> Array Int -> Array Int
addCard  = Array.push

removeCard : Int -> Array Int -> Array Int
removeCard i deck = Array.append (deck |> Array.slice 0 i) (deck |> Array.slice (i + 1) (Array.length deck))

evenCardCount : Array Int -> Int
evenCardCount deck = deck |> Array.filter (\card -> modBy 2 card == 0) |> Array.length
