map<int> colorMap = {
        "black": 0,
        "brown": 1,
        "red": 2,
        "orange": 3,
        "yellow": 4,
        "green": 5,
        "blue": 6,
        "violet": 7,
        "grey": 8,
        "white": 9
    };

# Calculates the resistor value for the passed band color
# 
# + color - The color of the resistor band
# + return - The value of the resistor band
function colorCode(string color) returns int {
    return colorMap.get(color);
}

# Returns the list of colors in the resistor color code
# + return - The list of colors
function colors() returns string[] {
    return colorMap.keys();
}

