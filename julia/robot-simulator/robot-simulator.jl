@enum Orientation NORTH EAST SOUTH WEST

struct Point{T<:Real}
    x::T
    y::T
end
Base.:+(p::Point, q::Point) = Point(p.x + q.x, p.y + q.y)

const advance_table = Dict(
    NORTH => Point{Int}(0, 1),
    EAST  => Point{Int}(1, 0),
    SOUTH => Point{Int}(0, -1),
    WEST  => Point{Int}(-1, 0)
)

mutable struct Robot
    position::Point{Int}
    orientation::Orientation
    Robot(p::Tuple{Int,Int}, o::Orientation) = new(Point(p[1], p[2]), o)
end

position(bot::Robot) = bot.position
heading(bot::Robot) = bot.orientation

function turn_right!(bot::Robot)::Robot
    bot.orientation = Orientation(mod(Int(bot.orientation) + 1, 4))
    bot
end
function turn_left!(bot::Robot)::Robot
    bot.orientation = Orientation(mod(Int(bot.orientation) - 1, 4))
    bot
end

function advance!(bot::Robot)::Robot
    bot.position += advance_table[bot.orientation]
    bot
end
const move_table = Dict(
            'A' => advance!,
            'R' => turn_right!,
            'L' => turn_left!
)
function move!(bot::Robot, instruction::String)::Robot
    for cmd in instruction
        move_table[cmd](bot)
    end
    bot
end

