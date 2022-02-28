drops = [(3, 'Pling'), (5, 'Plang'), (7, 'Plong')]


def convert(number):
    sp = [s for f, s in drops if number % f == 0]
    return "".join(sp) if sp else str(number)
