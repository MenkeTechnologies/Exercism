module main

fn can_queen_attack(white string, black string) !bool {

  pos2ints := fn (pos string)![]int {
    invalid := error("${pos} is not a valid square")
    if pos.len != 2 { return invalid}
    r := [int(pos[0]) - 97, int(pos[1]) - 49]
    if r[0] < 0||r[0] > 7||r[1] < 0||r[1] > 7 {return invalid}
    return r
  }
  w := pos2ints(white) or {return err}
  b := pos2ints(black) or {return err}
  if white == black { return error("queens on same square")}
  dx := w[0] - b[0]
  dy := w[1] - b[1]

  return dx == 0 || dy == 0 || dx == dy
}
