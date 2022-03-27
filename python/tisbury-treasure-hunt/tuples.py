def get_coordinate(record):
    """

    :param record: tuple - a (treasure, coordinate) pair.
    :return: str - the extracted map coordinate.
    """

    return record[1]


def convert_coordinate(coordinate):
    """

    :param coordinate: str - a string map coordinate
    :return:  tuple - the string coordinate seperated into its individual components.
    """

    return tuple(coordinate)


def compare_records(azara_record, rui_record):
    """

    :param azara_record: tuple - a (treasure, coordinate) pair.
    :param rui_record: tuple - a (location, coordinate, quadrant) trio.
    :return: bool - True if coordinates match, False otherwise.
    """

    return convert_coordinate(get_coordinate(azara_record)) == get_coordinate(rui_record)


def create_record(azara_record, rui_record):
    """

    :param azara_record: tuple - a (treasure, coordinate) pair.
    :param rui_record: tuple - a (location, coordinate, quadrant) trio.
    :return:  tuple - combined record, or "not a match" if the records are incompatible.
    """

    return azara_record + rui_record if compare_records(azara_record, rui_record) else 'not a match'


def clean_up(combined_record_group):
    """

    :param combined_record_group: tuple of tuples - everything from both participants.
    :return: string of tuples separated by newlines - everything "cleaned". Excess coordinates and information removed.
    """

    data = [(r[0], r[2], r[3], r[4]) for r in combined_record_group]
    return "".join([f"{n}\n" for n in data])
