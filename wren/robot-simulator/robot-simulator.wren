var DIRECTIONS = ["north", "east", "south", "west"]
var INSTRUCTIONS = "RLA"

class Robot {
    construct new() {
        _bearing = "north"
        _x = 0
        _y = 0
    }

    place(where) {
        if (!DIRECTIONS.contains(where["direction"])) {
            Fiber.abort("Invalid input")
        }
        _bearing = where["direction"]
        _x = where["x"]
        _y = where["y"]
    }

    bearing { _bearing }

    coordinates { [_x, _y] }

    advance {
        if (_bearing == "north") {
            _y = _y + 1
        } else if (_bearing == "south") {
            _y = _y - 1
        } else if (_bearing == "east") {
            _x = _x + 1
        } else if (_bearing == "west") {
            _x = _x - 1
        }
    }

    evaluateOne(instruction) {
        if (!INSTRUCTIONS.contains(instruction)) {
            Fiber.abort("Invalid input")
        }
        if (instruction == "R") {
            _bearing = DIRECTIONS[(DIRECTIONS.indexOf(_bearing) + 1) % 4]
        } else if (instruction == "L") {
            _bearing = DIRECTIONS[DIRECTIONS.indexOf(_bearing) - 1]
        } else {
            this.advance
        }
    }

    evaluate(instructions) {
        instructions.each {|instruction| evaluateOne(instruction)}
    }
}
