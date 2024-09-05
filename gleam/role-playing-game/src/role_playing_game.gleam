import gleam/option.{type Option, Some, None}
import gleam/int

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}

pub fn introduce(player: Player) -> String {
  option.unwrap(player.name, "Mighty Magician")
}

pub fn revive(player: Player) -> Option(Player) {
  case player.health {
    0 -> Player(..player, health: 100, mana: option.map(player.mana, fn(_) { 100 })) |> Some
    _ -> None
  }
}

pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
  case player.mana {
    Some(m) if m >= cost -> #(Player(..player, mana: Some(m - cost)), cost * 2)
    Some(_) -> #(player, 0)
    _ -> #(Player(..player, health: int.max(0, player.health - cost)), 0)
  }
}
