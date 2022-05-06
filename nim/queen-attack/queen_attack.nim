type Queen* = object
    row*, col*: int

proc initQueen*(x, y: int): Queen =

proc canAttack*(w, b: Queen): bool =

proc board*(w, b: Queen): string =

