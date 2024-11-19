include std/datetime.e

public function add_gigasecond(datetime moment)
    return add(moment, 1e9, SECONDS)
end function
