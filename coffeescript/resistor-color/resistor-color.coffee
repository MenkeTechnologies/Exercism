module.exports = class
  colorArray = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']
  @colorCode: (color) -> colorArray.indexOf(color)
  @colors: () -> colorArray
