import ballerina/test;

@test:Config {}
function testBlack() {
    test:assertEquals(0, colorCode("black"));
}

@test:Config {
    enable: true
}
function testWhite() {
    test:assertEquals(9, colorCode("white"));
}

@test:Config {
    enable: true
}
function testOrange() {
    test:assertEquals(3, colorCode("orange"));
}

@test:Config {
    enable: true
}
function testColors() {
    string[] expected = [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white"
    ];
    test:assertEquals(expected, colors());
}
