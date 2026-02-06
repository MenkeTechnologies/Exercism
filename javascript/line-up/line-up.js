const ORDINALS = { 1: "st", 2: "nd", 3: "rd" };

const suffix = (n) => ORDINALS[n % 10] && (n % 100 < 11 || n % 100 > 13) ? ORDINALS[n % 10] : "th";

export const format = (s, n) => `${s}, you are the ${n}${suffix(n)} customer we serve today. Thank you!`;
