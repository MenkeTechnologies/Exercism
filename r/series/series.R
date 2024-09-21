slices = function(series, len) {
    if (nchar(series) < len || len < 1) stop()
    substring(series, 1:(nchar(series) - len + 1), len:nchar(series))
}
