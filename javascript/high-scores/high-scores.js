export function HighScores(scores){
    this.scores = [...scores];
    this.latest = scores[scores.length - 1];
    this.personalBest = Math.max(...scores);
    this.personalTopThree = scores.sort((a, b) => b - a).slice(0, 3);
}
