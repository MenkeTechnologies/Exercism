const ALPHABET = 'abcdefghijklmnopqrstuvwxyz'

const rotateChar = (c: string, n: number): string => {
  const lc = c.toLowerCase()
  const i = ALPHABET.indexOf(lc)
  if (i === -1) { return c }
  const d = ALPHABET[ (i + n) % ALPHABET.length ]
  return c === lc ? d : d.toUpperCase()
}

export const rotate = (s: string, rot: number = 13): string =>
  [...s].map((c) => rotateChar(c, rot)).join('')
