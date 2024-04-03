module.exports = class
  @distance: (strand1, strand2) ->
    if strand1.length != strand2.length
      throw new Error "strands must be of equal length"

    cnt = 0
    for i in [0..strand1.length]
      if strand1[i] != strand2[i]
        cnt++
    cnt
