import strformat, math

type
  Clock* = object
    hour*: range[0..23]
    minute*: range[0..59]
  Minutes* = distinct int

proc initClock*(hour, minute: int): Clock =
  let totalMinutes = (hour * 60 + minute).euclMod(24 * 60)
  return Clock(hour: totalMinutes div 60, minute: totalMinutes mod 60)

proc `$`*(c: Clock): string =
  result = fmt"{c.hour:02}:{c.minute:02}"

proc `+`*(c: Clock, v: Minutes): Clock =
  return initClock(c.hour, c.minute + v.int)

proc `-`*(c: Clock, v: Minutes): Clock =
  return initClock(c.hour, c.minute - v.int)
