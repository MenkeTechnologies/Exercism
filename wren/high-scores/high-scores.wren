class HighScores {
  construct new(scores) { _s = scores.toList }
  scores { _s.toList }
  latest { _s[-1] }
  personalBest { scores.reduce { |acc,n| n > acc ? n : acc } }
  personalTopThree { scores.sort { |a,b| a > b }.take(3).toList }
}
