enum ResistorColors {
  black, brown, red, orange, yellow,
  green, blue, violet, grey, white
}

export const colorCode = (rc: string) =>
    parseInt(ResistorColors[rc as unknown as ResistorColors]);

export const COLORS = Object.values(ResistorColors).splice(0, 10);
