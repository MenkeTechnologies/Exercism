etl = function(dict) {
    res = list()
    for (k in names(dict)) {
        res[tolower(dict[[k]])] = as.integer(k)
    }
    res[order(names(res))]
}

