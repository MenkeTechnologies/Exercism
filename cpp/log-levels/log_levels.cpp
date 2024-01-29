#include <string>
using std::string;

namespace log_line {
    string message(const string &msg){
        return msg.substr(msg.find(':') + 2);
    }
    string log_level(const string &msg){
        return msg.substr(1, msg.find(']')-1);
    }
    string reformat(const string &msg){
        return message(msg) + " (" + log_level(msg) + ")";
    }
}
