CARDINAL = ['no', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']


def recite(start, take=1):
    output = []
    for i in range(take):
        plural = 's' if start > 1 else ''
        next = start - 1
        output += [f"{CARDINAL[start].capitalize()} green bottle{plural} hanging on the wall,",
                   f"{CARDINAL[start].capitalize()} green bottle{plural} hanging on the wall,",
                   f"And if one green bottle should accidentally fall,",
                   f"There'll be {CARDINAL[next]} green bottle{'' if next == 1 else 's'} hanging on the wall."]
        if i != take - 1:
            start -= 1
            output.append('')
    return output
