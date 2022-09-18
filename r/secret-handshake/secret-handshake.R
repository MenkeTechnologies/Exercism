handshake = function(n) {
  msgs = c("wink", "double blink", "close your eyes", "jump")
  res = msgs[bitwAnd(n, 2^(0:3)) != 0]
  if (bitwAnd(n, 16)) res = rev(res)
  switch(length(res) != 0, res)
}

