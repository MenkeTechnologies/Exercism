module.exports = class Isogram
  @isIsogram: (s) -> !s.toLowerCase().match /(\w).*\1/

