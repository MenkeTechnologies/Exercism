const ORDINALS : {[n: number] : string} = { 1: "st", 2: "nd", 3: "rd" };

const suffix = (n: number) => ORDINALS[n % 10] && (n % 100 < 11 || n % 100 > 13) ? ORDINALS[n % 10] : "th";

export const format = (s: string, n: number) => `${s}, you are the ${n}${suffix(n)} customer we serve today. Thank you!`;
