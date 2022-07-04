const ALPHA = "abcdefghijklmnopqrstuvwxyz";
export function encode(plainText: string): string {
  return transcode(plainText).reduce((s, c, i) => s += (i === 0) || i % 5 ? c : " " + c, "");
}
export function decode(cipherText: string): string {
  return transcode(cipherText).join("");
}
function transcode(text: string): string[] {
  return Array.from(text.replace(/\W/g, "").toLowerCase())
    .map(c => c.match(/\d/) ? c : ALPHA.charAt(25 - ALPHA.indexOf(c)));
}
