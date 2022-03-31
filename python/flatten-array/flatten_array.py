def flatten(iterable):
    r = []
    for i in iterable:
        if not isinstance(i, str) and hasattr(i, '__iter__'):
            r += flatten(i)
        elif i is not None:
            r.append(i)
    return r
