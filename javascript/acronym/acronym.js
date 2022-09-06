export const parse = (str) =>
    str.toUpperCase().replace(/[-_]/g, " ").split(/\s+/).map(n => n[0]).join("")