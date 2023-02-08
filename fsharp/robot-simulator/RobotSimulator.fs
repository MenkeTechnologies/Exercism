module RobotSimulator

type Direction =
    | North
    | East
    | South
    | West

type Position = int * int

type Robot =
    { direction: Direction
      position: Position }

let create direction position =
    { direction = direction
      position = position }

let right direction =
    match direction with
    | North -> East
    | East -> South
    | South -> West
    | West -> North

let left direction =
    match direction with
    | North -> West
    | West -> South
    | South -> East
    | East -> North

let forward direction position =
    match (direction, position) with
    | North, (x, y) -> create North (x, y + 1)
    | West, (x, y) -> create West (x - 1, y)
    | South, (x, y) -> create South (x, y - 1)
    | East, (x, y) -> create East (x + 1, y)

let mv robot m =
    match m with
    | 'L' -> create (left robot.direction) robot.position
    | 'R' -> create (right robot.direction) robot.position
    | _ -> forward robot.direction robot.position

let move instructions robot = Seq.fold mv robot instructions
