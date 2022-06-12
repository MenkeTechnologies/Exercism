local space_age = {}

local SPY = 31557600

function space_age:new(seconds)
  local function f(earth_year)
    return function() return tonumber(string.format("%.2f", seconds/ SPY / earth_year)) end
  end
  return {
    seconds = seconds,
    on_earth = f(1),
    on_mercury = f(0.2408467),
    on_venus = f(0.61519726),
    on_mars =  f(1.8808158),
    on_jupiter = f(11.862615),
    on_saturn = f(29.447498),
    on_uranus = f(84.016846),
    on_neptune = f(164.79132)
  }
end
return space_age
