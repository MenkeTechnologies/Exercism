class HighScores {
  List<int> scores;

  HighScores(this.scores);

  List<int> sort() {
    var l = scores.toList();
    l.sort();
    return l;
  }

  int latest() => scores.last;

  int personalBest() => sort().last;

  Iterable<int> personalTopThree() => sort().reversed.take(3);
}
