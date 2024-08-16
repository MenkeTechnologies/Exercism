import gleam/list

pub fn place_location_to_treasure_location(place_location: #(String, Int)) -> #(Int, String) {
  #(place_location.1, place_location.0)
}

pub fn treasure_location_matches_place_location(place_location: #(String, Int), treasure_location: #(Int, String)) -> Bool {
  place_location_to_treasure_location(place_location) == treasure_location
}

pub fn count_place_treasures(place: #(String, #(String, Int)), treasures: List(#(String, #(Int, String)))) -> Int {
  list.length(list.filter(treasures, fn(treasure){treasure_location_matches_place_location(place.1, treasure.1)}))
}

pub fn special_case_swap_possible(found_treasure: #(String, #(Int, String)), place: #(String, #(String, Int)),
  desired_treasure: #(String, #(Int, String))) -> Bool {
  case desired_treasure.0 {
    "Glass Starfish" | "Crystal Crab" -> place.0 == "Stormy Breakwater" && found_treasure.0 == "Amethyst Octopus"
    "Antique Glass Fishnet Float" | "Model Ship in Large Bottle"-> place.0 == "Harbor Managers Office" && found_treasure.0 == "Vintage Pirate Hat"
    _ -> place.0 == "Abandoned Lighthouse" && found_treasure.0 == "Brass Spyglass"
  }
}

