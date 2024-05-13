class EggCounter {
  int count(int n) {
    int cnt = 0;
    while (n > 0) {
      cnt += n & 1;
      n ~/= 2;
    }
    return cnt;
  }
}
