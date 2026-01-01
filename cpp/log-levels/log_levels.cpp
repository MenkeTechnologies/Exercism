#include <string>
#include <regex>

using namespace std;


namespace log_line {
    string message(const string& line) {
        regex pattern(R"(\[(\w+)\]:\s*(.*))");
        smatch m;
        return regex_search(line, m, pattern) ? string(m[2]) : "";
    }
    string log_level(const string& line) {
        regex pattern(R"(\[(\w+)\]:)"); 
        smatch m;
        return regex_search(line, m, pattern) ? string(m[1]) : "";
    }
    string reformat(const string& line) {
        return message(line) + " (" + log_level(line) + ")";
    }
}
