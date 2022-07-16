return function(pos)
  assert(pos.row >= 0 and pos.row < 8, 'row from 0 to 7')
  assert(pos.column >= 0 and pos.column < 8, 'column from 0 to 7')
  return {
    row = pos.row,
    column = pos.column,
    can_attack = function(other)
      local dy = math.abs(pos.row - other.row)
      local dx = math.abs(pos.column - other.column)
      return dx == 0 or dy == 0 or dx == dy
    end
  }
end
