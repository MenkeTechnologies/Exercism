module raindrops
  implicit none
contains
  function convert(i)
    integer :: i
    character(len=20) :: convert
    convert=""
    if (mod(i,3) == 0) then
      convert = trim(convert) // "Pling"
    end if
    if (mod(i,5) == 0) then
      convert = trim(convert) // "Plang"
    end if
    if (mod(i,7) == 0) then
      convert = trim(convert) // "Plong"
    end if
    if (trim(convert) == "") then
      write(convert,'(i0)') i;
    end if
  end function convert
end module raindrops
