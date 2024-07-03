module main

import arrays

struct HighScores {
    scores []int
}

pub fn HighScores.new(scores []int) HighScores {
    return HighScores{scores: scores}
}

pub fn (high_scores &HighScores) scores() []int {
    return high_scores.scores
}

pub fn (high_scores &HighScores) latest() int {
    return high_scores.scores.last()
}

pub fn (high_scores &HighScores) personal_best() int {
    return arrays.max(high_scores.scores) or { 0 }
}

pub fn (high_scores &HighScores) personal_top_three() []int {
    mut top_scores := high_scores.scores.sorted(b < a)
    top_scores.trim(3)
    return top_scores
}
