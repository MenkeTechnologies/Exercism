local Robot = {}

function Robot:new()
    local r = {}
    setmetatable(r, self)
    self.__index = self
    r:reset()
    return r
end

function Robot:reset()
    local A = 65
    local Z = 90
    self.name = utf8.char(math.random(A, Z)) .. utf8.char(math.random(A, Z)) ..
            math.random(0, 9) .. math.random(0, 9) .. math.random(0, 9)
    return self
end

return Robot
