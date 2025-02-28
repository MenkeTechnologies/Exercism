#include <string>
#include <vector>
#include <algorithm>

using namespace std;

namespace election {
    struct ElectionResult {
        string name{};
        int votes{};
    };

    int vote_count(const ElectionResult &result) { return result.votes; }

    void increment_vote_count(ElectionResult &result, int increment) {
        result.votes += increment;
   }

    ElectionResult &determine_result(vector<ElectionResult> &results) {
        ElectionResult& res = *max_element(results.begin(), results.end(),
                                           [](const auto &a, const auto &b) {
                                              return a.votes < b.votes;
                                          });
        res.name = "President " + res.name;
        return res;
    }
} 
