let length l =
  let rec aux count = function
    | _ :: t -> aux (count + 1) t
    | _ -> count
  in aux 0 l

let reverse l =
  let rec aux res = function
    | h :: t -> aux (h :: res) t
    | _ -> res
  in aux [] l

let rec map ~f = function
  | h :: t -> f h :: map ~f:f t
  | _ -> []

let rec filter ~f = function
  | h :: t when f h -> h :: filter ~f:f t
  | _ :: t -> filter ~f:f t
  | _ -> []

let rec fold ~init ~f = function
  | h :: t -> fold ~init:(f init h) ~f:f t
  | _ -> init

let rec append l l' =
  match l with
  | h :: t -> h :: append t l'
  | [] -> l'

let rec concat = function
  | h :: t -> append h (concat t)
  | _ -> []

