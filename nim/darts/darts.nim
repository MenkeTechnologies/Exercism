import math

proc score*(pt: (float, float)): int =
    case sqrt(pow(pt[0], 2) + pow(pt[1], 2)):
        of 0..1: 10
        of 1..5: 5
        of 5..10: 1
        else: 0
