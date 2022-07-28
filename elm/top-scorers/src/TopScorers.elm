module TopScorers exposing (..)

import Dict exposing (Dict)
import TopScorersSupport exposing (PlayerName)

updateGoalCountForPlayer : PlayerName -> Dict PlayerName Int -> Dict PlayerName Int
updateGoalCountForPlayer playerName playerGoalCounts =
    Dict.update playerName (Just << (+) 1 << Maybe.withDefault 0) playerGoalCounts

aggregateScorers : List PlayerName -> Dict PlayerName Int
aggregateScorers playerNames =
    List.foldl updateGoalCountForPlayer Dict.empty playerNames

removeInsignificantPlayers : Int -> Dict PlayerName Int -> Dict PlayerName Int
removeInsignificantPlayers goalThreshold playerGoalCounts =
    Dict.filter (\_ s -> s >= goalThreshold) playerGoalCounts

resetPlayerGoalCount : PlayerName -> Dict PlayerName Int -> Dict PlayerName Int
resetPlayerGoalCount playerName playerGoalCounts =
    Dict.update playerName (Maybe.map (always 0)) playerGoalCounts

formatPlayer : PlayerName -> Dict PlayerName Int -> String
formatPlayer playerName playerGoalCounts =
    playerName ++ ": " ++ (Dict.get playerName playerGoalCounts |> Maybe.withDefault 0 |> String.fromInt)

formatPlayers : Dict PlayerName Int -> String
formatPlayers players =
    String.join ", " (List.map (\n -> formatPlayer n players) (Dict.keys players))

combineGames : Dict PlayerName Int -> Dict PlayerName Int -> Dict PlayerName Int
combineGames game1 game2 =
    Dict.merge
        Dict.insert
        (\n s1 s2 -> Dict.insert n (s1 + s2))
        Dict.insert
        game1
        game2
        Dict.empty
