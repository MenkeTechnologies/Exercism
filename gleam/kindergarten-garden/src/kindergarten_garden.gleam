import gleam/list
import gleam/result
import gleam/string

pub type Student {
  Alice
  Bob
  Charlie
  David
  Eve
  Fred
  Ginny
  Harriet
  Ileana
  Joseph
  Kincaid
  Larry
}

pub type Plant {
  Radishes
  Clover
  Violets
  Grass
}

fn to_plant(letter: String) -> Plant {
  case letter {
    "R" -> Radishes
    "C" -> Clover
    "V" -> Violets
    "G" -> Grass
  }
}

fn student_index(student: Student) -> Int {
  case student {
    Alice -> 0
    Bob -> 1
    Charlie -> 2
    David -> 3
    Eve -> 4
    Fred -> 5
    Ginny -> 6
    Harriet -> 7
    Ileana -> 8
    Joseph -> 9
    Kincaid -> 10
    Larry -> 11
  }
}

pub fn plants(diagram: String, student: Student) -> List(Plant) {
  let index = student_index(student)
  diagram
  |> string.split("\n")
  |> list.map(string.to_graphemes)
  |> list.map(fn(letters) { letters |> list.map(to_plant) })
  |> list.map(fn(row) { list.sized_chunk(row, 2) })
  |> list.map(fn(chunked_row) { list.at(chunked_row, index) })
  |> result.values()
  |> list.flatten()
}


