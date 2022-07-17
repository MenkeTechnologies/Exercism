local phone_number = {}
phone_number.__index = phone_number

function phone_number:new(number)
  local self = setmetatable({}, phone_number)
  local pattern = '(%d%d%d)[^%d]*(%d%d%d)[^%d]*(%d%d%d%d)$'

  if #number == 11 then pattern = '1' .. pattern end
    self.area, self.central_office, self.line = number:match(pattern)
  if not pcall(function() self.number = self.area .. self.central_office .. self.line end) then
    self.number = "0000000000"
  end
  return self
end

function phone_number:areaCode()
  return self.area
end

function phone_number:__tostring()
  return '(' .. self.area .. ') ' .. self.central_office .. '-' .. self.line
end
return phone_number
