pub type TreasureChest(t) {
  TreasureChest(password: String, treasure: t)
}
pub type UnlockResult(t) {
  Unlocked(treasure: t)
  WrongPassword
}
pub fn get_treasure(chest: TreasureChest(treasure), password: String) -> UnlockResult(treasure) {
  case password == chest.password {
    True -> Unlocked(chest.treasure)
    False -> WrongPassword
  }
}

