module GradeSchool exposing (Grade, Result(..), School, Student, addStudent, allStudents, emptySchool, studentsInGrade)
import Dict exposing (..)
import List exposing (concatMap, sort)
type alias Grade = Int
type alias Student = String
type alias School = Dict Int (List Student)
type Result = Added | Duplicate

emptySchool = empty

addStudent grade student school =
        if allStudents school |>  List.member student then
            (Duplicate, school)
        else
            let
                updatedStudents =
                    case get grade school of
                        Nothing -> [student]
                        Just students -> student :: students |> sort
            in
            (Added, insert grade updatedStudents school)

studentsInGrade grade school =
        case get grade school of
            Nothing -> []
            Just students -> students

allStudents school = keys school |>
    concatMap (\grade -> studentsInGrade grade school)
