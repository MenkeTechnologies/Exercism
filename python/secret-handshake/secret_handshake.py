DICT = {'wink': 1, 'double blink': 2, 'close your eyes': 4, 'jump': 8}

def commands(n):
    n = int(n, 2)
    l = [k for k,v in DICT.items() if n & v]
    return l[::-1] if n & 16 else l
