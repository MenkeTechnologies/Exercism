class QueenAttack
  constructor: (positions) ->
    @white = positions['white'] or [0, 3]
    @black = positions['black'] or [7, 3]
    throw "Queens cannot share the same space" if @white == @black

  toString: ->
    board = ('O' for _ in [0...8] for _ in [0...8])
    board[@white[1]][@white[0]] = 'W'
    board[@black[1]][@black[0]] = 'B'
    (row.join(' ') for row in board).join('\n')

  canAttack: ->
    dx = Math.abs(@black[1] - @white[1])
    dy = Math.abs(@black[0] - @white[0])
    dx == dy || dx == 0 || dy == 0


module.exports = QueenAttack
