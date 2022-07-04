const ALPHA = "abcdefghijklmnopqrstuvwxyz";
export function encode(plainText: string): string {
  return transcode(plainText).reduce((acc, c, i) => acc += i === 0 || i % 5 ? c : " " + c, "");
}
export function decode(cipherText: string): string {
  return transcode(cipherText).join("");
}
function transcode(text: string): string[] {
  return Array.from(text.toLowerCase().replace(/\W/g, ""))
    .map(c => c.match(/\d/) ? c : ALPHA.charAt(25 - ALPHA.indexOf(c)));
}
