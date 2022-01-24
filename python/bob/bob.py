import re


def response(hey_bob):
    hey_bob = re.sub(r"\s+", '', hey_bob)

    if len(hey_bob) == 0:
        return 'Fine. Be that way!'

    if re.search(r'[A-Z]', hey_bob) and not re.search(r'[a-z]', hey_bob):
        return "Calm down, I know what I'm doing!" if re.search(r'\?$', hey_bob) else 'Whoa, chill out!'

    return 'Sure.' if re.search(r'\?$', hey_bob) else 'Whatever.'
