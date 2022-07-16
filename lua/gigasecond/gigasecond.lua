return {
  anniversary = function(seconds)
    return os.date('%x', seconds + 1e9)
  end
}
