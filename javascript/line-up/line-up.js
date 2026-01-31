const ORDINALS = { 1: "st", 2: "nd", 3: "rd" };

const suffix = number => ORDINALS[number % 10] && (number % 100 < 11 || number % 100 > 13) ? ORDINALS[number % 10] : "th";

export const format = (name, number) => `${name}, you are the ${number}${suffix(number)} customer we serve today. Thank you!`;
