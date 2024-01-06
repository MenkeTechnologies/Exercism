let s:directions = ['north', 'east', 'south', 'west']

function! Create(direction, x, y) abort
  return {'direction': a:direction, 'x': a:x, 'y': a:y, 'Move': function('MoveRobot')}
endfunction

function! MoveRobot(instructions) dict
  for instruction in split(a:instructions, '\zs')
    if instruction ==# 'L'
      let i = index(s:directions, self.direction)
      let self.direction = s:directions[i - 1]
    elseif instruction ==# 'R'
      let i = index(s:directions, self.direction)
      let i = (i + 1) % 4
      let self.direction = s:directions[i]
    elseif instruction ==# 'A'
      if self.direction ==# 'north'
        let self.y += 1
      elseif self.direction ==# 'east'
        let self.x += 1
      elseif self.direction ==# 'south'
        let self.y -= 1
      elseif self.direction ==# 'west'
        let self.x -= 1
      endif
    else
        throw 'unknown instruction'
    endif
  endfor
endfunction
