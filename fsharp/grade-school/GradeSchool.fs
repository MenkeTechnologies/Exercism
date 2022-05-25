module GradeSchool

type School = Map<int, string list>

let empty: School = Map.empty

let grade (number: int) (school: School) =
    Map.tryFind number school
    |> Option.defaultValue []

let add (student: string) (gradeNum: int) (school: School) : School =
    Map.add gradeNum (student :: grade gradeNum school |> List.sort) school

let roster (school: School) : string list =
    Map.fold (fun acc _ l -> acc @ l) [] school
