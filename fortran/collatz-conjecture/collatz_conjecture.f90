module collatz_conjecture
  implicit none
contains
  integer function steps(limit)
  integer, intent(in) :: limit
  integer :: n
  n = limit
  steps = -1
  if (n.lt.1) return
  steps = 0
  do while (n.ne.1)
    if (mod(n,2).eq.0) then
      n = n / 2
    else
      n = n * 3 + 1
    end if
    steps = steps + 1
  end do
  end function
end module

