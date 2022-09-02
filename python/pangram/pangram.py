from string import ascii_lowercase


def is_pangram(sentence):
    return all(c in sentence.lower() for c in ascii_lowercase)
