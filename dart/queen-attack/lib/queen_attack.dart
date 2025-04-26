class Queen {
  late int f, r;

  Queen(this.r, this.f)
      : assert(f >= 0, 'column not positive'),
        assert(f < 8, 'column not on board'),
        assert(r >= 0, 'row not positive'),
        assert(r < 8, 'row not on board');

  bool canAttack(Queen other) {
    var dx = (other.f - f).abs();
    var dy = (other.r - r).abs();
    return dx == 0 || dy == 0 || dx == dy;
  }
}
