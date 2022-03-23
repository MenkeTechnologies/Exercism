set map {
    Mercury    0.2408467
    Venus      0.61519726
    Earth      1.0
    Mars       1.8808158
    Jupiter   11.862615
    Saturn    29.447498
    Uranus    84.016846
    Neptune  164.79132
}
set secondsPerEarthYear 31557600.0

proc onEarth {s} {
    return [expr $s / $::secondsPerEarthYear]
}
proc onMercury {s} {
    return [expr [onEarth $s] / [dict get $::map Mercury] ]
}
proc onVenus {s} {
    return [expr [onEarth $s] / [dict get $::map Venus] ]
}
proc onMars {s} {
    return [expr [onEarth $s] / [dict get $::map Mars] ]
}
proc onJupiter {s} {
    return [expr [onEarth $s] / [dict get $::map Jupiter] ]
}
proc onSaturn {s} {
    return [expr [onEarth $s] / [dict get $::map Saturn] ]
}
proc onUranus {s} {
    return [expr [onEarth $s] / [dict get $::map Uranus] ]
}
proc onNeptune {s} {
    return [expr [onEarth $s] / [dict get $::map Neptune] ]
}
proc onSun {s} {
    error "not a planet"
}
