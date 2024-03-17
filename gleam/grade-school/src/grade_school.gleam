import gleam/dict
import gleam/list
import gleam/int
import gleam/string

pub type School = dict.Dict(Int, List(String))

pub fn create() -> School { dict.new() }

pub fn add(to school: School, student student: String, grade grade_num: Int) -> Result(School, Nil) {
  let current = grade(school, grade_num)
  case list.contains(roster(school), student) {
    False -> Ok(dict.insert(school, grade_num, list.sort([student,..current], string.compare)))
    _ -> Error(Nil)
  }
}

pub fn grade(school: School, desired_grade: Int) -> List(String) {
  case dict.get(school, desired_grade) {
    Ok(students) -> students
    _ -> []
  }
}

pub fn roster(school: School) -> List(String) {
  let grades = list.sort(dict.keys(school), int.compare)
  list.flat_map(over: grades, with: fn(grade_num){grade(school, grade_num)})
}

