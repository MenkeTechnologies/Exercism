#include <array>
#include <string>
#include <vector>

using namespace std;

vector<int> round_down_scores(const vector<double> &student_scores) {
    vector<int> res;
    for (double d: student_scores) res.emplace_back(int(d));
    return res;
}

int count_failed_students(const vector<int> &student_scores) {
    int res = 0;
    for (int n: student_scores) if (n <= 40) ++res;
    return res;
}

vector<int> above_threshold(const vector<int> &student_scores, int threshold) {
    vector<int> res;
    for (int n: student_scores) if (n >= threshold) res.emplace_back(n);
    return res;
}

array<int, 4> letter_grades(int highest_score) {
    int inc = (highest_score - 40) / 4;
    return {41, 41 + inc, 41 + 2 * inc, 41 + 3 * inc};
}

vector<string> student_ranking(const vector<int> &student_scores, const vector<string> &student_names) {
    vector<string> res;
    for (int j = 0; j < student_names.size(); j++)
        res.emplace_back(to_string(j + 1) + ". " + student_names.at(j)
                         + ": " + to_string(student_scores.at(j)));
    return res;
}

string perfect_score(const vector<int> &student_scores, const vector<string> &student_names) {
    for (int j = 0; j < student_names.size(); j++) if (student_scores.at(j) == 100) return student_names.at(j);
    return "";
}
