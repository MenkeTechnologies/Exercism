class Acronym {
  String abbreviate(String phrase) {
    return phrase.toUpperCase().split(new RegExp(r"[^A-Z']+")).map((e) => e[0]).join();
    
  }
}
