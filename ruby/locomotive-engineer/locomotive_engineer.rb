class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end
  def self.fix_list_of_wagons((penult, last, first, *others), missing_wagons)
    [first, *missing_wagons, *others, penult, last]
  end
  def self.add_missing_stops(from_to, **missing_stops)
    {**from_to, **{stops: missing_stops.values}}
  end
  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
