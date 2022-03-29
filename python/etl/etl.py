def transform(legacy_data):
    return {word.lower(): sc for sc, words in legacy_data.items() for word in words}
