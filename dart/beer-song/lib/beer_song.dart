class BeerSong {
  List<String> verse(int takeDown) {
    switch (takeDown) {
      case 0:
        return ["No more bottles of beer on the wall, no more bottles of beer.", "Go to the store and buy some more, 99 bottles of beer on the wall."];
      case 1:
        return ["1 bottle of beer on the wall, 1 bottle of beer.", "Take it down and pass it around, no more bottles of beer on the wall."];
      case 2:
        return ["2 bottles of beer on the wall, 2 bottles of beer.", "Take one down and pass it around, 1 bottle of beer on the wall."];
      default:
        return ["$takeDown bottles of beer on the wall, $takeDown bottles of beer.", "Take one down and pass it around, ${takeDown - 1} bottles of beer on the wall."];
    }
  }
  List<String> recite(int start, int takeDown) {
      List<String> s = [];
      int end = start - takeDown + 1;
      for (var i = start; i > end; --i) {
          s.addAll(verse(i));
          s.add('');
      }
      s.addAll(verse(end));
      return s;
  }
}
