module RolePlayingGame exposing (Player, castSpell, introduce, revive)


type alias Player =
    { name : Maybe String
    , level : Int
    , health : Int
    , mana : Maybe Int
    }


introduce : Player -> String
introduce { name } =
    name |> Maybe.withDefault "Mighty Magician"



revive : Player -> Maybe Player
revive ({health,level} as character) =
    if health > 0 then
        Nothing
    else if level >= 10 then
        Just {character | health = 100, mana = Just 100}
    else
        Just {character | health = 100, mana = Nothing}


castSpell : Int -> Player -> ( Player, Int )
castSpell manaCost player =
    case player.mana of
        Nothing ->
            ({player | health = max(player.health - manaCost) 0}, 0)
        Just mana ->
            if mana >= manaCost then
                ( {player | mana = Just (mana - manaCost)}
                , manaCost * 2)
            else
                (player, 0)
