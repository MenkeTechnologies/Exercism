component {
	function isIsogram(input) {
        var found = {};
        input = reReplaceNoCase(input, "[^A-Za-z]", "", "all");
		for(var c in listToArray(input, "")){
            if(structKeyExists(found, c)){
                return false;
            }
            found[c] = 1;
        }
        return true;
	}
}
