class Series {
    static slices(String series, int len) {
        if (len < 1 || len > series.length())
            throw new ArithmeticException()
        series.split("")
                .collate(len, 1, false)
                .collect { it.join() }
    }
}
