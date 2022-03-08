export const parse = (s: string) =>
    s.replace(/([a-z])([A-Z])/g, " $2").toUpperCase()
        .split(/[\s-]+/).map(n => n[0]).join("")
