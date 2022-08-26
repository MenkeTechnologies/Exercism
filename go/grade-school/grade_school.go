package school

import "sort"

type Grade struct {
	Grade int
	Names []string
}
type School struct {
	grades map[int][]string
}
type ByGrade []Grade

func (g ByGrade) Len() int {
	return len(g)
}
func (g ByGrade) Less(i, j int) bool {
	return g[i].Grade < g[j].Grade
}
func (g ByGrade) Swap(i, j int) {
	g[i], g[j] = g[j], g[i]
}
func New() *School {
	return &School{grades: make(map[int][]string)}
}
func (s *School) Add(name string, grade int) {
	added := s.grades[grade]
	added = append(added, name)
	sort.Strings(added)
	s.grades[grade] = added
}
func (s *School) Grade(grade int) []string {
	return s.grades[grade]
}
func (s *School) Enrollment() []Grade {
	var g []Grade
	for k, v := range s.grades {
		g = append(g, Grade{Grade: k, Names: v})
	}
	sort.Sort(ByGrade(g))
	return g
}
