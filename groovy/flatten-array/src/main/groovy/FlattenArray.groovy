class FlattenArray {
    static List flatten(List l) {
        l.findAll{ it != null}.collect {
            if (it instanceof List) {
                flatten(it)
            } else it
        }.flatten().toList()
    }
}
