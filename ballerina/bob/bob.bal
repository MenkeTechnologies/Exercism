public function hey(string input) returns string {
    string nows = input.trim();
    boolean empty = nows.length() == 0;
    boolean yell = nows == nows.toUpperAscii() && nows != nows.toLowerAscii();
    boolean question = nows.endsWith("?");
    if empty {
        return "Fine. Be that way!";
    }
    if (yell) {
        return question ? "Calm down, I know what I'm doing!" : "Whoa, chill out!";
    }

    return question ? "Sure." : "Whatever.";
}
