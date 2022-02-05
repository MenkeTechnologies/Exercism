class RnaTranscription {

  final Map<String, String> MAP = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
  };

  String toRna(String s) => s.split('').map((e) => MAP[e]).join('');
  // Put your code here
}
