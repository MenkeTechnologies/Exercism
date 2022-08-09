const MAP : {[k: string]: string} = {
  '[': ']',
  '(': ')',
  '{': '}'
}
export const isPaired = (str : string) => {
  const stk = []
  for (const n of str.split('')) {

    if (MAP[n]) {
      stk.push(n)
    } else if (Object.values(MAP).indexOf(n) !== -1) {
      if (!stk.length || MAP[stk.pop()!] !== n) {
        return false;
      }
    }

  }

  return stk.length === 0;
};
