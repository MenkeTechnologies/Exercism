module.exports = class Raindrops
    sounds = { 3: "Pling", 5: "Plang", 7: "Plong" }
    @convert = (n) ->
        msg = ""
        for k,v of sounds
            if n % k == 0
                msg += v
        return msg or "#{n}"
