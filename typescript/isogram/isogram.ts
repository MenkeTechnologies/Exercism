export const isIsogram = (s: string) => new Set(s.toLowerCase().replace(/[\s-]/g, '')).size === s.toLowerCase().replace(/[\s-]/g, '').length;
