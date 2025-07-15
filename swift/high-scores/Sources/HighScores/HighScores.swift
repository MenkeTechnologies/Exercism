import Foundation
struct HighScores {
    let scores: [Int]
    
    var latest: Int { scores.last ?? 0 }
    var personalBest: Int { scores.max() ?? 0 }
    var topThree: [Int] { Array(scores.sorted(by: >).prefix(3)) }
}
