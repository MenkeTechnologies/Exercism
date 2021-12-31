class ETL {

    static transform(Map<String, List<String>> input) {

        input.inject([:]) { acc, k, v ->
            v.each { acc[it.toLowerCase()] = k as int }
            acc
        }

    }
}
