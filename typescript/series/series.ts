
export class Series {
  private readonly series: string;

  constructor(series: string) {
    if (!series.length) throw new Error('series cannot be empty');
    this.series = series;
  }

  slices(len: number): number[][] {
    if (!len) throw new Error('slice length cannot be zero');
    if (len < 0) throw new Error('slice length cannot be negative');
    if (this.series.length < len) throw new Error('slice length cannot be greater than series length');
    const numSlices = this.series.length - len + 1;
    return [...Array(numSlices)].map((_, i) => this.series.slice(i, i + len).split("").map(n => parseInt(n)));
  }
}
