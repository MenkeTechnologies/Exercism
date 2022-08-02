const a = 'a'.charCodeAt(0), A = 'A'.charCodeAt(0)

export const rotate = (message, r) =>
    message.split('').map(c =>
            /[A-Z]/.test(c) ? String.fromCharCode(A + (c.charCodeAt(0) - A + r) % 26) :
            /[a-z]/.test(c) ? String.fromCharCode(a + (c.charCodeAt(0) - a + r) % 26) : c)
        .join('')
