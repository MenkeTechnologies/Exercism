public function convert(int n) returns string {
    string res = "";
    if n % 3 == 0 { res += "Pling"; }
    if n % 5 == 0 { res += "Plang"; }
    if n % 7 == 0 { res += "Plong"; }
    return res.length() == 0 ? n.toString() : res;
}
