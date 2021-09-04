object BeerSong {
  def recite(top: Int, cnt: Int) = {

    var str = ""

    for (num <- top until top - cnt by -1) {
      var phrase1 = "bottle"
      var phrase2 = phrase1
      val num2 = num - 1

      if (num == 1) {
        phrase1 = s"$num $phrase1"
      } else if (num == 0) {
        phrase1 = s"No more ${phrase1}s"
      } else {
        phrase1 = s"$num ${phrase1}s"
      }

      str += s"$phrase1 of beer on the wall, ${phrase1.toLowerCase()} of beer.\n"

      if (num == 0) {
        str += "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      } else {

        if (num2 == 1) {
          phrase2 = s"$num2 $phrase2"
          str += s"Take one down and pass it around, $phrase2 of beer on the wall.\n"
        } else if (num2 == 0) {
          phrase2 = s"no more ${phrase2}s"
          str += s"Take it down and pass it around, $phrase2 of beer on the wall.\n"
        } else {
          phrase2 = s"$num2 ${phrase2}s"
          str += s"Take one down and pass it around, $phrase2 of beer on the wall.\n"
        }

      }

      if (num2 != top - cnt) {
        str += "\n"
      }


    }
    str

  }

}
