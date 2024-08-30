import gleam/dict

pub type ScoreBoard = dict.Dict(String, Int)

pub fn create_score_board() -> ScoreBoard {
  dict.from_list([#("The Best Ever", 1_000_000)])
}

pub const add_player = dict.insert

pub const remove_player = dict.delete

pub fn update_score(score_board: ScoreBoard, player: String, score: Int) -> ScoreBoard {
  case score_board |> dict.get(player) {
    Ok(previous_score) -> score_board |> dict.upsert(player, fn(_) { previous_score + score })
    Error(_) -> score_board
  }
}

pub fn apply_monday_bonus(score_board: ScoreBoard) -> ScoreBoard {
  score_board |> dict.map_values(fn(_, score) { score + 100 })
}
