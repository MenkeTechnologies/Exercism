Red [
    description: { "Two-fer" exercise solution for exercism platform }
    author: "MenkeTechnologies"
]
two-fer: function [
    "Prints a generic message, or, if name supplied, a targeted message"
    name [string! none!]
] [
    if none? name [
        name: "you"
    ]
    rejoin [
        "One for " name ", one for me."
    ]
]
