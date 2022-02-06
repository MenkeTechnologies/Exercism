VAL_MAP = {
    'A': 1,
    'K': 10,
    'Q': 10,
    'J': 10,
}


def value_of_card(card):
    return VAL_MAP.get(card) or int(card)


def higher_card(card_one, card_two):
    v1 = value_of_card(card_one)
    v2 = value_of_card(card_two)

    return card_one if v1 > v2 else card_two if v2 > v1 else (card_one, card_two)


def value_of_ace(card_one, card_two):
    v1 = value_of_card(card_one)
    v2 = value_of_card(card_two)
    return 1 if card_one == 'A' or card_two == 'A' else 11 if v1 + v2 + 11 <= 21 else 1


def is_blackjack(card_one, card_two):
    l = ['10', 'J', 'K', 'Q']
    return False if card_one == 'A' and card_two == 'A' else True if card_one == 'A' and card_two in l else True if card_two == 'A' and card_one in l else False


def can_split_pairs(card_one, card_two):
    v1 = value_of_card(card_one)
    v2 = value_of_card(card_two)
    return True if v1 == v2 else False


def can_double_down(card_one, card_two):
    v1 = value_of_card(card_one)
    v2 = value_of_card(card_two)
    return True if v1 + v2 in [9, 10, 11] else False
