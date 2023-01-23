def proverb(*args, qualifier=None):
    res = []
    if len(args) == 0:
        return res
    for num in range(int(len(args) - 1)):
        res.append(f"For want of a {args[num]} the {args[num + 1]} was lost.")
    if qualifier:
        res.append(f"And all for the want of a {qualifier} nail.")
    else:
        res.append(f"And all for the want of a {args[0]}.")
    return res
