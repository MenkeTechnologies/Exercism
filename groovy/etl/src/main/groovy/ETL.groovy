class ETL {

    static transform(Map<String, List<String>> input) {

        def map = [:]

        input.each { k, v ->
            v.each {
                map[it.toLowerCase()] = k as int
            }
        }

        map

    }
}
