local Clock = {}
Clock.__index = Clock

function Clock:__tostring()
  return string.format('%02d:%02d', (self.minutes // 60) % 24, self.minutes % 60)
end
function Clock:plus(minutes)
  self.minutes = self.minutes + minutes
  return self
end
function Clock:minus(minutes)
  self.minutes = self.minutes - minutes
  return self
end
function Clock:equals(other)
  return tostring(self) == tostring(other)
end
function Clock.at(hours, minutes)
  return setmetatable({ minutes = hours * 60 + (minutes or 0) }, Clock)
end
return Clock
