public function isIsogram(string s) returns boolean {
    return !((map from string c in s
                where c != " " && c != "-"
                select [c, ()]
                on conflict error("Key conflict")) is error);
}

