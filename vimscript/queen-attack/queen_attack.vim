function! CanAttack(other) dict
    let dx = abs(self.row - a:other.row)
    let dy = abs(self.column - a:other.column )
    return dx == 0 || dy == 0 || dx == dy
endfunction

function! Queen(row, column) abort
    if a:row < 0
        throw 'row not positive'
    elseif a:column < 0
        throw 'column not positive'
    elseif a:row > 7
        throw 'row not on board'
    elseif a:column > 7
        throw 'column not on board'
    endif
    return {'row': a:row, 'column': a:column, 'CanAttack': function('CanAttack')}
endfunction

