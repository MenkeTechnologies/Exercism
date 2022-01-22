module LuciansLusciousLasagna
let expectedMinutesInOven = 40

let remainingMinutesInOven min = expectedMinutesInOven - min

let preparationTimeInMinutes lay = lay * 2

let elapsedTimeInMinutes lay min = preparationTimeInMinutes lay + min
