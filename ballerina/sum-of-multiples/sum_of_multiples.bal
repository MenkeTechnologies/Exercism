public function sum(int[] factors, int 'limit) returns int {
    var values = stream from int i in 1 ... 'limit - 1
        where factors.some(factor => factor > 0 && i % factor == 0)
        select i;
    return stream:reduce(values, function(int a, int b) returns int => a + b, 0);
}
