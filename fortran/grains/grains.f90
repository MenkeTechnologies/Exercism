
module grains

  implicit none

contains

  double precision function square(n)
    integer :: n
    square = -1.d0
    if (n > 0 .and. n <= 64) then
        square = 2.d0 ** (n - 1)
    end if
  end function

  double precision function total()
    total = 2.d0 ** 64
  end function

end module
