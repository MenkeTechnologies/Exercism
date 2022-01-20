EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


def bake_time_remaining(time):
    """
     :param time:
     :return: int
     """
    return EXPECTED_BAKE_TIME - time


def preparation_time_in_minutes(layers):
    """
     :param layers:
     :return: int
      """
    return layers * PREPARATION_TIME


def elapsed_time_in_minutes(layers, time):
    """
    :param layers:
    :param time:
    :return: int
    """
    return time + preparation_time_in_minutes(layers)
