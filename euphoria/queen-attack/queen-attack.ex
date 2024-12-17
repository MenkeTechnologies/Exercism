include std/math.e

public type queen(sequence posn)
    return length(posn) = 2 and posn[1] >= 0 and posn[1] <= 7 and posn[2] >= 0 and posn[2] <= 7
end type

public function can_attack(queen white_queen, queen black_queen)
    integer dx = abs(white_queen[1] - black_queen[1]), dy = abs(white_queen[2] - black_queen[2])
    return dx = 0 or dy = 0 or dx = dy
end function
