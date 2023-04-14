type Colors* = enum Black, Brown, Red, Orange, Yellow, Green, Blue, Violet, Grey, White

func value*(bands: openArray[Colors]): int = ord(bands[0]) * 10 + ord(bands[1])
