open Base

type robot = {mutable name: string}

let used_names = Hash_set.create (module String)
let rand_letter() = Random.int 26 + 65 |> Char.of_int_exn
let rand_num() = Random.int 10 + 48 |> Char.of_int_exn

let rand_name() = [ rand_letter() ; rand_letter() ; rand_num() ; rand_num() ; rand_num() ]
  |> String.of_char_list

let make_name () =
    let name = rand_name() |> ref in
    while Hash_set.mem used_names !name do
        name := rand_name()
    done;
  Hash_set.add used_names !name;
  !name
let new_robot() = {name = make_name()}

let name r = r.name

let reset r =
    let old_name = r.name in
    r.name <- make_name();
    Hash_set.remove used_names old_name
