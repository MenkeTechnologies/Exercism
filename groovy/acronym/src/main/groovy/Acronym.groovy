class Acronym {

    static String abbreviate(String phrase) {
        def l = phrase.toUpperCase().replaceAll("[,_]", "").replaceAll("[-]", " ").split()

        l.collect {it[0]}.join()

    }

}
