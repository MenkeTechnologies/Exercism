QueenAttack = require './queen-attack'

describe 'Queens', ->
  it 'has the correct default positions', ->
    queens = new QueenAttack
    expect(queens.white).toEqual([0, 3])
    expect(queens.black).toEqual([7, 3])

  it 'initialized with specific placement', ->
    queens = new QueenAttack({white: [3, 7], black: [6, 1]})
    expect(queens.white).toEqual([3, 7])
    expect(queens.black).toEqual([6, 1])


  it 'cannot occupy the same space', ->
    positioning = {white: [2, 4], black: [2, 4]}
    expect(-> new QueenAttack(positioning)).toThrow('Queens cannot share the same space')


  it 'toString representation', ->
    positioning = {white: [2, 4], black: [6, 6]}
    queens = new QueenAttack(positioning)
    board = '_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n' +
      '_ _ W _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ B _\n_ _ _ _ _ _ _ _'
    expect(queens.toString()).toEqual(board)

  it 'queens cannot attack', ->
    queens = new QueenAttack({white: [2, 3], black: [4, 7]})
    expect(queens.canAttack()).toEqual(false)


  it 'queens can attack when they are on the same row', ->
    queens = new QueenAttack({white: [2, 4], black: [2, 7]})
    expect(queens.canAttack()).toEqual(true)


  it 'queens can attack when they are on the same column', ->
    queens = new QueenAttack({white: [5, 4], black: [2, 4]})
    expect(queens.canAttack()).toEqual(true)


  it 'queens can attack diagonally', ->
    queens = new QueenAttack({white: [1, 1], black: [6, 6]})
    expect(queens.canAttack()).toEqual(true)


  it 'queens can attack another diagonally', ->
    queens = new QueenAttack({white: [0, 6], black: [1, 7]})
    expect(queens.canAttack()).toEqual(true)


  it 'queens can attack yet another diagonally', ->
    queens = new QueenAttack({white: [4, 1], black: [6, 3]})
    expect(queens.canAttack()).toEqual(true)

  it 'queens can attack yet yet another diagonally', ->
    queens = new QueenAttack({white: [6, 1], black: [1, 6]})
    expect(queens.canAttack()).toEqual(true)
