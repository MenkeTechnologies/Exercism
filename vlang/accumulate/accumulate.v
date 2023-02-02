module main

fn accumulate_ints(values []int, operation fn (int) int) []int {
	mut result := []int{}
	for v in values {
		result << operation(v)
	}
	return result
}

fn accumulate_strs(values []string, operation fn (string) string) []string {
	mut result := []string{}
	for v in values {
		result << operation(v)
	}
	return result
}
