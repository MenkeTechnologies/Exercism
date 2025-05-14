#pragma once

#include <functional>

using namespace std;

namespace list_ops {
    inline void append(vector<int> &lhs, const vector<int> &rhs) {
        lhs.insert(lhs.end(), rhs.begin(), rhs.end());
    }

    template<typename T>
    T concat(const vector<T> &lst) {
        T result;
        for (const auto &values: lst) {
            result.insert(result.end(), values.begin(), values.end());
        }
        return result;
    }

    inline vector<int> filter(const vector<int> &lst, function<bool(int)> lambda) {
        vector<int> result;
        copy_if(lst.begin(), lst.end(), back_inserter(result), std::move(lambda));
        return result;
    }

    inline size_t length(const vector<int> &lst) { return lst.size(); }

    inline vector<int> map(vector<int> lst, function<int(int)> lambda) {
        transform(lst.begin(), lst.end(), lst.begin(), std::move(lambda));
        return lst;
    }

    template<typename T, typename F>
    T foldl(const vector<T> &lst, T acc, F lambda) {
        return accumulate(lst.begin(), lst.end(), acc, lambda);
    }

    template<typename T, typename F>
    T foldr(const vector<T> &lst, T acc, F lambda) {
        return accumulate(lst.rbegin(), lst.rend(), acc, lambda);
    }

    template<typename T>
    inline vector<T> reverse(const vector<T> &lst) {
        return {lst.rbegin(), lst.rend()};
    }
}
