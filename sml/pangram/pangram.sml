fun isPangram s = List.all(Char.contains(String.map Char.toLower s)) (explode "abcdefghijklmnopqrstuvwxyz")
