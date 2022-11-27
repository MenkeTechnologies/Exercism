module RobotSimulator exposing
    ( Bearing(..) , Robot , advance , defaultRobot , simulate , turnLeft , turnRight)
type Bearing = North | East | South | West
type alias Robot = { bearing : Bearing , coordinates : { x : Int, y : Int } }

defaultRobot = { bearing = North , coordinates = { x = 0, y = 0 } }

turnRight robot = case robot.bearing of
        North -> { robot | bearing = East }
        East -> { robot | bearing = South }
        South -> { robot | bearing = West }
        West -> { robot | bearing = North }

turnLeft robot = case robot.bearing of
        North -> { robot | bearing = West }
        West -> { robot | bearing = South }
        South -> { robot | bearing = East }
        East -> { robot | bearing = North }

advance { bearing, coordinates } = case bearing of
        North -> Robot bearing { coordinates | y = coordinates.y + 1 }
        East -> Robot bearing { coordinates | x = coordinates.x + 1 }
        South -> Robot bearing { coordinates | y = coordinates.y - 1 }
        West -> Robot bearing { coordinates | x = coordinates.x - 1 }

simulate directions robot = directions
        |> String.toList
        |> List.foldl executeAction robot

executeAction char robot = case char of
        'L' -> turnLeft robot
        'R' -> turnRight robot
        'A' -> advance robot
        _ -> robot

