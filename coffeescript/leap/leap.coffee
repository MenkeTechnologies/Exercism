module.exports = class
  @leapYear: (year) -> year % 4 == 0 && year % 100 != 0 || year % 400 == 0

