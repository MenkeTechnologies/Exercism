module [value]

Colour : [ Black, Brown, Red, Orange, Yellow, Green, Blue, Violet, Grey, White ]

value : Colour, Colour -> U64
value = \c1, c2 -> to_int(c1) * 10 + to_int(c2)

to_int : Colour -> U64
to_int = \colour -> when colour is
        Black -> 0
        Brown -> 1
        Red -> 2
        Orange -> 3
        Yellow -> 4
        Green -> 5
        Blue -> 6
        Violet -> 7
        Grey -> 8
        White -> 9
