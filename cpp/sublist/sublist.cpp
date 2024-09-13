#include "sublist.h"
#include <algorithm>

namespace sublist {
    List_comparison sublist(const vector<int> &l1, const vector<int> &l2) {
        if (l1.size() == l2.size()) return l1 == l2 ? List_comparison::equal : List_comparison::unequal;
        if (l1.size() < l2.size()) {
            return search(l2.begin(), l2.end(), l1.begin(), l1.end()) != l2.end() ? List_comparison::sublist : List_comparison::unequal;
        } else {
            return search(l1.begin(), l1.end(), l2.begin(), l2.end()) != l1.end() ? List_comparison::superlist
                                                                                  : List_comparison::unequal;
        }
    }
} 
