const sameRow = (white, black) => white[0] === black[0]
const sameColumn = (white, black) => white[1] === black[1]
const onBoard = cs => cs.every(c => c >= 0 && c < 8)

export class QueenAttack {
  constructor({white = [7, 3], black = [0, 3]} = {}) {
    if (![white, black].every(onBoard))
      throw 'Queen must be placed on the board'
    if (sameRow(white, black) && sameColumn(white, black))
      throw 'Queens cannot share the same space'
    this.white = white
    this.black = black

    
    
  }

  toString() {
    const board = Array.from({length: 8}, () => Array(8).fill("_"))
    board[this.white[0]][this.white[1]] = 'W'
    board[this.black[0]][this.black[1]] = 'B'
    return board.map(r => r.join(' ')).join("\n")
  }

  get canAttack() {
    const dx = Math.abs(this.white[0] - this.black[0]);
    const dy = Math.abs(this.white[1] - this.black[1]);
    return dx === dy || dx === 0 || dy === 0;
  }
}
