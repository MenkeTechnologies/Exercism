object ProteinTranslation {
  private val STOP = List("UAA", "UAG", "UGA")
  def proteins(str: String) = 
    str.grouped(3).takeWhile(!STOP.contains(_)).map {
      case "AUG" => "Methionine"
      case "UUU" | "UUC" => "Phenylalanine"
      case "UUA" | "UUG" => "Leucine"
      case "UCU" | "UCC" | "UCA" | "UCG" => "Serine"
      case "UAU" | "UAC" => "Tyrosine"
      case "UGU" | "UGC" => "Cysteine"
      case "UGG" => "Tryptophan"
      case _ => ""
    }.toSeq
}
