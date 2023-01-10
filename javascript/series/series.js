export class Series {
  constructor(series) {
    this._series = series.split('').map(ch => 1 * ch);
  }

  slices = len => {
    if (this._series.length === 0) throw 'series cannot be empty';
    if (len === 0) throw Error('slice length cannot be zero');
    if (len < 0) throw new Error('slice length cannot be negative');
    const numSlices = this._series.length - len + 1;
    if (numSlices < 1) throw 'slice length cannot be greater than series length';
    return [...Array(numSlices)].map((_, i) => this._series.slice(i, i + len));
  };
}
