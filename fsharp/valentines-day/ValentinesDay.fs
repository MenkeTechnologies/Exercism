module ValentinesDay

type Approval =
    | Yes
    | No
    | Maybe

type Cuisine =
    | Korean
    | Turkish

type Genre =
    | Crime
    | Horror
    | Romance
    | Thriller

type Activity =
    | BoardGame
    | Chill
    | Movie of Genre
    | Restaurant of Cuisine
    | Walk of int

let rateActivity (activity: Activity) : Approval =
    match activity with
    | BoardGame
    | Chill -> No
    | Movie m when m = Romance -> Yes
    | Movie _ -> No
    | Restaurant r when r = Korean -> Yes
    | Restaurant r when r = Turkish -> Maybe
    | Restaurant _ -> No
    | Walk w when w < 3 -> Yes
    | Walk w when w < 5 -> Maybe
    | _ -> No
