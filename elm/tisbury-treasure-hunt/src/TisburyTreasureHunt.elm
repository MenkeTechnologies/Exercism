module TisburyTreasureHunt exposing (..)

type alias TreasureLocation = ( Int, Char )
type alias PlaceLocation = ( Char, Int )
type alias Treasure = ( String, TreasureLocation )
type alias Place = ( String, PlaceLocation )

placeLocationToTreasureLocation : ( Char, Int ) -> ( Int, Char )
placeLocationToTreasureLocation (c,n) =
    (n,c)



treasureLocationMatchesPlaceLocation : ( Char, Int ) -> ( Int, Char ) -> Bool
treasureLocationMatchesPlaceLocation placeLocation treasureLocation =
    placeLocationToTreasureLocation placeLocation == treasureLocation


countPlaceTreasures : ( String, ( Char, Int ) ) -> List ( String, ( Int, Char ) ) -> Int
countPlaceTreasures (_, placeLocation) treasures =
    let
        found = List.filter (treasureLocationMatchesPlaceLocation(placeLocation)) (List.map(\t -> Tuple.second t) treasures)
    in
        List.length found


specialCaseSwapPossible : ( String, TreasureLocation ) -> ( String, PlaceLocation ) -> ( String, TreasureLocation ) -> Bool
specialCaseSwapPossible ( foundTreasure, _ ) ( place, _ ) ( desiredTreasure, _ ) =
    case (foundTreasure, place, desiredTreasure) of
        ("Brass Spyglass", "Abandoned Lighthouse", _) ->
            True
        ("Amethyst Octopus", "Stormy Breakwater", "Crystal Crab") ->
            True
        ("Amethyst Octopus", "Stormy Breakwater", "Glass Starfish") ->
            True
        ("Vintage Pirate Hat", "Harbor Managers Office", "Model Ship in Large Bottle") ->
            True
        ("Vintage Pirate Hat", "Harbor Managers Office", "Antique Glass Fishnet Float") ->
            True
        ( _, _, _ ) ->
            False
