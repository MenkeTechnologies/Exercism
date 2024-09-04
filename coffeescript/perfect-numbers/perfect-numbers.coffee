module.exports = class
  @classify: (target) ->
    throw new Error 'Classification is only possible for positive integers.' if target <= 0

    sum = 0
    for n in [1...target]
      if target % n == 0
        sum += n

    if sum < target then 'deficient' else if sum > target then 'abundant' else 'perfect'
