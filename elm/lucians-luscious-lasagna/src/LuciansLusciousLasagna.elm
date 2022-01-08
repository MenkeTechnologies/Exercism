module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)

expectedMinutesInOven = 40
preparationTimeInMinutes lay = lay * 2
elapsedTimeInMinutes lay min = lay * 2 + min
