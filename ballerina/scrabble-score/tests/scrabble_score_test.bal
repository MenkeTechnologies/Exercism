import ballerina/test;

@test:Config {}
function testLowercaseLetter() {
    test:assertEquals(score("a"), 1);
}

@test:Config {
    enable: true
}
function testUppercaseLetter() {
    test:assertEquals(score("A"), 1);
}

@test:Config {
    enable: true
}
function testValuableLetter() {
    test:assertEquals(score("f"), 4);
}

@test:Config {
    enable: true
}
function testShortWord() {
    test:assertEquals(score("at"), 2);
}

@test:Config {
    enable: true
}
function testShortValuableWord() {
    test:assertEquals(score("zoo"), 12);
}

@test:Config {
    enable: true
}
function testMediumWord() {
    test:assertEquals(score("street"), 6);
}

@test:Config {
    enable: true
}
function testMediumValuableWord() {
    test:assertEquals(score("quirky"), 22);
}

@test:Config {
    enable: true
}
function testLongMixedCaseWord() {
    test:assertEquals(score("OxyphenButazone"), 41);
}

@test:Config {
    enable: true
}
function testEnglishLikeWord() {
    test:assertEquals(score("pinata"), 8);
}

@test:Config {
    enable: true
}
function testEmptyInput() {
    test:assertEquals(score(""), 0);
}

@test:Config {
    enable: true
}
function testEntireAlphabetAvailable() {
    test:assertEquals(score("abcdefghijklmnopqrstuvwxyz"), 87);
}
