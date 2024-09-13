#pragma once
#include <vector>
using namespace std;

namespace sublist {
	enum class List_comparison {equal, sublist, superlist, unequal};
	List_comparison sublist(const vector<int>& l1, const vector<int>& l2);
}
