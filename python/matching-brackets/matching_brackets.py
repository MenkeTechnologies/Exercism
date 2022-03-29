def is_paired(input_string):
    pairs = {'{': '}', '[': ']', '(': ')'}
    stk = []

    for ch in input_string:
        if ch in pairs:
            stk.append(ch)
        elif ch in pairs.values():
            if len(stk) == 0 or ch != pairs[stk.pop()]:
                return False

    return len(stk) == 0
