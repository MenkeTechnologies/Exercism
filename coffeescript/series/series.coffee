module.exports = class
  @slices: (series, len) ->
    throw new Error "series cannot be empty" if !series
    throw new Error "slice length cannot be zero" if len == 0
    throw new Error "slice length cannot be negative" if len < 0
    throw new Error "slice length cannot be greater than series length" if len > series.length

    series.substring(i, i + len) for i in [0..series.length - len]

