const a = 'a'.charCodeAt(0),
    A = 'A'.charCodeAt(0)

export const rotate = (s, amt) =>
    s.split('').map(c =>
        /[A-Z]/.test(c) ? String.fromCharCode(A + (c.charCodeAt(0) - A + amt) % 26) :
        /[a-z]/.test(c) ? String.fromCharCode(a + (c.charCodeAt(0) - a + amt) % 26) : c)
    .join('')