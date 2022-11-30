import Base.+
import Base.-
import Dates

struct Clock
    hours::Int
    minutes::Int

    function Clock(hours, minutes)
        if minutes % 60 >= 0
            new(mod(hours + minutes ÷ 60, 24), mod(minutes, 60))
        else
            new(mod(hours + (minutes ÷ 60) - 1, 24), mod(minutes, 60))
        end
    end
end

function +(clock::Clock, minute::Dates.Minute)
    Clock(clock.hours, clock.minutes + minute.value)
end

function -(clock::Clock, minute::Dates.Minute)
    Clock(clock.hours, clock.minutes - minute.value)
end

function padl(num)
    lpad(num, 2, "0")
end

function Base.show(io::IO, clock::Clock)
    print(io, "\"$(padl(clock.hours)):$(padl(clock.minutes))\"")
end

