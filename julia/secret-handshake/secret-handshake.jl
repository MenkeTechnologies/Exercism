const signals = [
    "wink" => 1,
    "double blink" => 2,
    "close your eyes" => 4,
    "jump" => 8
]
const reverse_signal = 16

function secret_handshake(code::Integer)
    r = map(p -> p.first, filter(p -> p.second & code > 0, signals))
    code & reverse_signal != 0 ? reverse(r) : r
end
