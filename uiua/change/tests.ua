~ "change.ua" ~ Change

# Change for 1 cent
Coins    ← [1 5 10 25]
Target   ← 1
Expected ← [1]
⍤⤙≍ Expected Change Coins Target

# Single coin change
Coins    ← [1 5 10 25 100]
Target   ← 25
Expected ← [25]
⍤⤙≍ Expected Change Coins Target

# Multiple coin change
Coins    ← [1 5 10 25 100]
Target   ← 15
Expected ← [5 10]
⍤⤙≍ Expected Change Coins Target

# Change with Lilliputian Coins
Coins    ← [1 4 15 20 50]
Target   ← 23
Expected ← [4 4 15]
⍤⤙≍ Expected Change Coins Target

# Change with Lower Elbonia Coins
Coins    ← [1 5 10 21 25]
Target   ← 63
Expected ← [21 21 21]
⍤⤙≍ Expected Change Coins Target

# Large target values
Coins    ← [1 2 5 10 20 50 100]
Target   ← 999
Expected ← [2 2 5 20 20 50 100 100 100 100 100 100 100 100 100]
⍤⤙≍ Expected Change Coins Target

# Possible change without unit coins available
Coins    ← [2 5 10 20 50]
Target   ← 21
Expected ← [2 2 2 5 10]
⍤⤙≍ Expected Change Coins Target

# Another possible change without unit coins available
Coins    ← [4 5]
Target   ← 27
Expected ← [4 4 4 5 5 5]
⍤⤙≍ Expected Change Coins Target

# No coins make 0 change
Coins    ← [1 5 10 21 25]
Target   ← 0
Expected ← []
⍤⤙≍ Expected Change Coins Target

# Error testing for change smaller than the smallest of coins
Coins  ← [5 10]
Target ← 3
⍤⤙≍ "can't make target with given coins" ⍣(Change Coins Target)

# Error if no combination can add up to target
Coins  ← [5 10]
Target ← 94
⍤⤙≍ "can't make target with given coins" ⍣(Change Coins Target)

# Cannot find negative change values
Coins  ← [1 2 5]
Target ← ¯5
⍤⤙≍ "target can't be negative" ⍣(Change Coins Target)
