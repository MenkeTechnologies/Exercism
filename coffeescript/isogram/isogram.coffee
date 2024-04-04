module.exports = class
  @isIsogram: (s) -> !s.toLowerCase().match /(\w).*\1/

