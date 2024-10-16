// Generated by CoffeeScript 2.7.0
(function() {
  var QueenAttack;

  QueenAttack = require('./queen-attack');

  describe('Queens', function() {
    it('has the correct default positions', function() {
      var queens;
      queens = new QueenAttack();
      expect(queens.white).toEqual([0, 3]);
      return expect(queens.black).toEqual([7, 3]);
    });
    it('initialized with specific placement', function() {
      var queens;
      queens = new QueenAttack({
        white: [3, 7],
        black: [6, 1]
      });
      expect(queens.white).toEqual([3, 7]);
      return expect(queens.black).toEqual([6, 1]);
    });
    it('cannot occupy the same space', function() {
      var positioning;
      positioning = {
        white: [2, 4],
        black: [2, 4]
      };
      return expect(function() {
        return new QueenAttack(positioning);
      }).toThrow('Queens cannot share the same space');
    });
    it('toString representation', function() {
      var board, positioning, queens;
      positioning = {
        white: [2, 4],
        black: [6, 6]
      };
      queens = new QueenAttack(positioning);
      board = '_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n' + '_ _ W _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ B _\n_ _ _ _ _ _ _ _';
      return expect(queens.toString()).toEqual(board);
    });
    it('queens cannot attack', function() {
      var queens;
      queens = new QueenAttack({
        white: [2, 3],
        black: [4, 7]
      });
      return expect(queens.canAttack()).toEqual(false);
    });
    it('queens can attack when they are on the same row', function() {
      var queens;
      queens = new QueenAttack({
        white: [2, 4],
        black: [2, 7]
      });
      return expect(queens.canAttack()).toEqual(true);
    });
    it('queens can attack when they are on the same column', function() {
      var queens;
      queens = new QueenAttack({
        white: [5, 4],
        black: [2, 4]
      });
      return expect(queens.canAttack()).toEqual(true);
    });
    it('queens can attack diagonally', function() {
      var queens;
      queens = new QueenAttack({
        white: [1, 1],
        black: [6, 6]
      });
      return expect(queens.canAttack()).toEqual(true);
    });
    it('queens can attack another diagonally', function() {
      var queens;
      queens = new QueenAttack({
        white: [0, 6],
        black: [1, 7]
      });
      return expect(queens.canAttack()).toEqual(true);
    });
    it('queens can attack yet another diagonally', function() {
      var queens;
      queens = new QueenAttack({
        white: [4, 1],
        black: [6, 3]
      });
      return expect(queens.canAttack()).toEqual(true);
    });
    return it('queens can attack yet yet another diagonally', function() {
      var queens;
      queens = new QueenAttack({
        white: [6, 1],
        black: [1, 6]
      });
      return expect(queens.canAttack()).toEqual(true);
    });
  });

}).call(this);

//# sourceMappingURL=queen-attack.spec.js.map
