module SecureTreasureChest exposing (..)

type Password = Password String
type SecureTreasureChest treasure = SecureTreasureChest String treasure

createPassword passwordCandidate =
    if String.length passwordCandidate < 8 then
        Nothing
    else
        Password passwordCandidate |> Just

createTreasure treasure (Password password) =
    SecureTreasureChest password treasure

getTreasure passwordAttempt (SecureTreasureChest password treasure) =
    if not (passwordAttempt == password) then
        Nothing
    else
        Just treasure
