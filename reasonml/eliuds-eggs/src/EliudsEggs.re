let eggCount = (n) => {
    let rec aux = (cnt, acc) => {
        switch(cnt) {
         | 0 => acc
         | _ when cnt mod 2 > 0 => aux(cnt - 1, acc + 1)
         | _ => aux(cnt lsr 1, acc)
        }
    }
    aux(n, 0)
}
