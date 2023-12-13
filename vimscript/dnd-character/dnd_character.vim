function! Modifier(score) abort
  return float2nr(floor((a:score - 10) / 2.0))
endfunction

function! Ability() abort
  let rolls = map(repeat([0], 4), 'rand() % 6 + 1')
  let kept = sort(rolls)[1:]
  let sum = 0
    for dice in kept
    let sum += dice
  endfor
  return sum
endfunction

function! Character() abort
  let constitution = Ability()
  return {'strength': Ability(), 'dexterity': Ability(), 'constitution': constitution,
  \       'intelligence': Ability(), 'wisdom': Ability(), 'charisma': Ability(),
  \       'hitpoints': 10 + Modifier(constitution)}
endfunction
