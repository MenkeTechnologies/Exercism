#include "high_scores.h"
#include <algorithm>

namespace arcade {
    vector<int> HighScores::list_scores() {
        return scores;
    }

    int HighScores::latest_score() {
        return scores.back();
    }

    int HighScores::personal_best() {
        return *max_element(scores.begin(), scores.end());
    }

    vector<int> HighScores::top_three() {
        vector<int> sorted_scores(scores);
        sort(sorted_scores.begin(), sorted_scores.end(), greater<>());
        return sorted_scores.size() > 2 ? vector<int>(sorted_scores.begin(), sorted_scores.begin() + 3) : sorted_scores;
    }
}
