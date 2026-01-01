new_school() = []

function add!(students, school)
      map(student ->
          if student.name in roster(school)
              return false
          else
            push!(school, student)
            return true
          end, students)
end

grade(num, school) = map(x -> x.name, school |> filter(x -> x.grade == num)) |> sort

roster(school) = map(x -> x.name, sort(school; by = x -> (x.grade, x.name)))
