add_gigasecond = function(moment) {
  seconds = as.numeric(format(moment, "%s")) + 1e9
  ISOdate(strftime(seconds, "%Y"), strftime(seconds, "%m"), strftime(seconds, "%d"), strftime(seconds, "%H"), strftime(seconds, "%M"), strftime(seconds, "%S"))
}
