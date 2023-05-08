public function score(float x, float y) returns int {
    var dist = x * x + y * y;
    if dist > 100.0 {
        return 0;
    } else if dist > 25.0 {
        return 1;
    } else if dist > 1.0 {
        return 5;
    } else {
        return 10;
    }
}
