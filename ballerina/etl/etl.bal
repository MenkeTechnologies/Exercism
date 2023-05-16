public function transform(map<string[]> old) returns map<int> {
    return map from [string,string[]] entry in old.entries()
        let int|error score = int:fromString(entry[0])
        from string letter in entry[1]
        let string lc = letter.toLowerAscii()
        where score is int
        order by lc
        select [lc, score];
}
