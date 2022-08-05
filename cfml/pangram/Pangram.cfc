component {
	
	function isPangram(sentence) {
		alph = listToArray("abcdefghijklmnopqrstuvwxyz",'');
		sentence = lCase(sentence)
		for (c in alph) {
			if (find(c, sentence) == 0) {
				return false;
			}
		}
        return true;
	}
	
}
