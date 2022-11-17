module space_age
  implicit none
contains
  pure double precision function age_in_years(planet, seconds)
    character(len=*), intent(in) :: planet
    double precision, intent(in) :: seconds
    double precision :: period
    select case (planet)
      case ("Mercury")
        period = 0.2408467d0
      case ("Venus")
        period = 0.61519726d0
      case ("Earth")
        period = 1.0
      case ("Mars")
        period = 1.8808158d0
      case ("Jupiter")
        period = 11.862615d0
      case ("Saturn")
        period = 29.447498d0
      case ("Uranus")
        period = 84.016846d0
      case ("Neptune")
        period = 164.79132d0
      end select
    age_in_years = seconds / 31557600.0d0 / period
  end function
end module
