module.exports = class SecretHandshake
  allowed_actions = ["wink", "double blink",
                      "close your eyes", "jump"]
  @commands: (n) ->
    res = allowed_actions
      .filter (_, i) -> n & Math.pow 2, i
    if n & 16
      res.reverse()
    else
      res
