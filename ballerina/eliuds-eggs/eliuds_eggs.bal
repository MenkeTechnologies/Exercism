public function eggCount(int displayValue) returns int {
    int cnt = 0;
    int dup = displayValue;
    while (dup > 0){
        cnt += dup & 1;
        dup >>= 1;
    }
    return cnt;
}
