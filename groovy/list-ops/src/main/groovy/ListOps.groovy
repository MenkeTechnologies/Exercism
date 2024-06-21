class ListOps {
    static foldl(lst, f, acc) {
        lst.each { acc = f(acc, it)}
        acc
    }
    static length(lst) {
        foldl(lst, { acc, n -> acc + 1 }, 0)
    }
    static append(lst1, lst2) {
        foldl(lst2, { acc, n -> acc + n }, lst1)
    }
    static concatenate(lsts) {
        foldl(lsts, { acc, n -> append(acc, [n]) }, [])
    }
    static filter(lst, f) {
        foldl(lst, { acc, n -> f(n) ? append(acc, [n]) : acc }, [])
    }
    static map(lst, f) {
        foldl(lst, {acc, n -> append(acc, f(n)) }, [])
    }
    static reverse(lst) {
        foldl(lst, { acc, n -> concatenate([[n], acc]) }, [])
    }
    static foldr(lst, f, init) {
        foldl(reverse(lst), { acc, n -> f(acc, n) }, init)
    }
}
