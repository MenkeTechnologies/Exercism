module hamming
  implicit none
contains
  function compute(s1, s2, d)
      character(*) :: s1, s2
      integer :: d
      logical :: compute
      integer:: i
      d = 0
      if (len(s1(:)) /= len(s2(:))) then
        compute = .false.
      else
        do i=1, len(s1(:))
          if (s1(i:i) /= s2(i:i)) then
            d = d + 1
          end if
        end do
        if (d == 0) then
          compute = .true.
        end if
      end if
  end function compute
end module hamming
