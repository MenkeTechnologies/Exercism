module.exports = class ResistorColorDuo
  colorArray = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
  @colorCode: (color) -> colorArray.indexOf(color)
  @value: (colors) -> @colorCode(colors[0]) * 10 + @colorCode(colors[1])
