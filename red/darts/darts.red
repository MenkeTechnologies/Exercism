Red [
    description: {"Darts" exercise solution for exercism platform}
    author: ""
]
score: function [
    x
    y
] [
    r: square-root ((x ** 2) + (y ** 2))
    case [
            r <= 1 [10]
            r <= 5 [5]
            r <= 10 [1]
            true [0]
        ]
]

