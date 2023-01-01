def get_list_of_wagons(*ids):
    return list(ids)


def fix_list_of_wagons(each_wagons_id, missing_wagons):
    one, two, locomotive, *rest = each_wagons_id
    return [locomotive, *missing_wagons, *rest, one, two]


def add_missing_stops(route, **stops):
    return {**route, "stops": list(stops.values())}


def extend_route_information(route, more_route_information):
    return {**route, **more_route_information}


def fix_wagon_depot(wagons_rows):
    return list(map(list, zip(*wagons_rows)))
