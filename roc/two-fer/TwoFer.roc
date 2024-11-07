module [twoFer]

twoFer = \name ->
    title = when name is
        Name s -> s
        Anonymous -> "you"
    "One for $(title), one for me."
