module queen_attack
    implicit none
contains

    logical function isValid(pos)
        integer, dimension(2), intent(in) :: pos
        isValid = pos(1) > 0 .and. pos(1) < 8 .and. pos(2) > 0 .and. pos(2) < 8
    end function

    logical function canAttack(white_pos, black_pos)
        integer, dimension(2), intent(in) :: white_pos, black_pos
        integer :: dx, dy
        dx = abs(white_pos(1) - black_pos(1))
        dy = abs(white_pos(2) - black_pos(2))
        canAttack = dx == 0 .or. dy == 0 .or. dx == dy
    end function
end module

