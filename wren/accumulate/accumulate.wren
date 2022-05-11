var Accumulate = Fn.new { |list, fn|
    var r = []
    list.map{|n| fn.call(n)}.each{|n| r.add(n)}
    return r
}
