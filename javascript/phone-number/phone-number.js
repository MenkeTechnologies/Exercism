export const clean = phone => {

    let m = phone.match(/^\s*\+?(\d)?\s*\(?(\d{3})\)?[-.\s]*(\d{3})[-.\s]*(\d{4})\s*$/);

    if (phone.length < 10) throw new Error("Incorrect number of digits")

    if (m) {
        if (m[1] && m[1] !== '1') throw new Error("11 digits must start with 1")

        if (m[2][0] === '1') throw new Error('Area code cannot start with one')
        if (m[2][0] === '0') throw new Error('Area code cannot start with zero')
        if (m[3][0] === '1') throw new Error('Exchange code cannot start with one')
        if (m[3][0] === '0') throw new Error('Exchange code cannot start with zero')

        return `${m[2]}${m[3]}${m[4]}`
    }

    if (phone.toLowerCase().match(/[a-z]/)) throw new Error("Letters not permitted")
    if (phone.replace(/[\d()+-]/g, '').length > 0) throw new Error("Punctuations not permitted")
    if (phone.length > 10) throw new Error("More than 11 digits")

}