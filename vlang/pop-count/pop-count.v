module main

fn egg_count(number int) int {
    mut cnt := 0
    mut n := number
    for n > 0 {
        n &= n - 1
        cnt++
    }
    return cnt
}
