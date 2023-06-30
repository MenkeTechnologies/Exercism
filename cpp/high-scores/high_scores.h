#pragma once

#include <array>
#include <utility>
#include <vector>

using namespace std;

namespace arcade {

class HighScores {
   private:
    vector<int> scores;

   public:
    explicit HighScores(vector<int> scores) : scores(std::move(scores)){};

    vector<int> list_scores();

    int latest_score();

    int personal_best();

    vector<int> top_three();
};

}
