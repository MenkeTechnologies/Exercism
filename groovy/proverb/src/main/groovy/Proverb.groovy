class Proverb {

    static def recite(List<String> strings) {

        def fin = ""

        if (strings.size() == 0) {
            return fin
        }

        for (int i = 0; i < strings.size() - 1; ++i) {

            def cur = strings.get(i)
            def next = strings.get(i + 1)
            def res = "For want of a $cur the $next was lost.\n"
            fin += res


        }
        fin += "And all for the want of a ${strings.get(0)}."

        fin

    }
}