local directions = {
  north = { L = 'west', R = 'east', y = 1 },
  east = { L = 'north', R = 'south', x = 1 },
  south = { L = 'east', R = 'west', y = -1 },
  west = { L = 'south', R = 'north', x = -1 }
  }

return function(p)
  return {
    x = p.x,
    y = p.y,
    heading = p.heading,
    move = function (self, command)
        for i = 1, #command do
            local c = command:sub(i,i)
            if c == 'R' or c == 'L' then self.heading = directions[self.heading][c]
            elseif c == 'A' then
                self.x = self.x + (directions[self.heading].x or 0)
                self.y = self.y + (directions[self.heading].y or 0)
            else
                assert(false, 'unknown command')
            end
        end
    end
  }
end
