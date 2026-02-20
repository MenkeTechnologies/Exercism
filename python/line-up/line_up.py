dict = {1: 'st', 2: 'nd', 3: 'rd'}
def line_up(s, n):
    ordinal = 'th' if n % 100 in (11, 12, 13) else dict.get(n % 10, 'th')
    return f'{s}, you are the {n}{ordinal} customer we serve today. Thank you!'
