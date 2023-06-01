def new_remote_control_car(nickname):
  {
    "battery_percentage": 100,
    "distance_driven_in_meters": 0,
    "nickname": nickname
  }
;

def new_remote_control_car: new_remote_control_car(null);

def display_distance: "\(.distance_driven_in_meters) meters";

def display_battery: "Battery " + if .battery_percentage == 0 then "empty" else "at \(.battery_percentage)%" end;

def drive:
  if .battery_percentage == 0 then .
  else (.battery_percentage -= 1 | .distance_driven_in_meters += 20)
  end
;
