module.exports = class
  @flatten: (values) ->
    aux = (res, val) =>
      if not val? then return res
      res.concat (if Array.isArray val then @flatten val else val)
    values.reduce aux , []
