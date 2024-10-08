struct InvalidPosition <: Exception
    row::Int
    col::Int
end
struct Queen
    row::Int
    col::Int
    Queen(row::Int, col::Int) = 0 ≤ row ≤ 7 && 0 ≤ col ≤ 7 ? new(row, col) : throw(InvalidPosition(row, col))
end

row(q::Queen) = q.row
column(q::Queen) = q.col

function canattack(white::Queen, black::Queen)
    dx, dy = abs(column(white) - column(black)), abs(row(white) - row(black))
    iszero(dx) || iszero(dy) || dx == dy
end
