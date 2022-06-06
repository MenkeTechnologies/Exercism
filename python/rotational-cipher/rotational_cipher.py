chars = "abcdefghijklmnopqrstuvwxyz"

def rotate(text, key):
    newchars = chars[key:] + chars[:key]
    trans = str.maketrans(chars + chars.upper(), newchars + newchars.upper())
    return text.translate(trans)
