class Triangle {
  construct new(a, b, c) {
      _sides = [a, b, c]
    _sides.sort()
  }

  valid { _sides[0] + _sides[1] > _sides[2] }


  isEquilateral { valid && _sides.all {|s| s == _sides[0] } }

  isIsosceles { valid && _sides[0] == _sides[1] || _sides[1] == _sides[2] }

  isScalene { valid && !isIsosceles }
}
