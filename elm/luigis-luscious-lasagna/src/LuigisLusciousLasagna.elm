module LuigisLusciousLasagna exposing (remainingTimeInMinutes)

expectedMinutesInOven = 40
minutesPerLayer = 2

remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes layers minutesElapsed =
      let preparationTimeInMinutes numLayers = minutesPerLayer * numLayers
      in preparationTimeInMinutes layers + expectedMinutesInOven - minutesElapsed

