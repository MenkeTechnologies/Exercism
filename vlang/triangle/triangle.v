module main

fn is_equilateral(a f64, b f64, c f64) bool {
	return a == b && b == c
}
fn is_isosceles(a f64, b f64, c f64) bool {
	return is_valid_triangle(a, b, c) && (a == b || a == c || b == c)
}
fn is_scalene(a f64, b f64, c f64) bool {
	return is_valid_triangle(a, b, c) && !is_equilateral(a, b, c) && !is_isosceles(a, b, c)
}
fn is_valid_triangle(a f64, b f64, c f64) bool {
	return a + b >= c && a + c >= b && b + c >= a
}
