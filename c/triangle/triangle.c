#include "triangle.h"

static int is_valid_triangle(triangle_t sides) {
    if (sides.a <= 0 || sides.b <= 0 || sides.c <= 0)
        return 0;
    return sides.a + sides.b >= sides.c && sides.b + sides.c >= sides.a && sides.c + sides.a >= sides.b;
}

static int unique_sides(triangle_t sides) {
    if (sides.a == sides.b) return (sides.c == sides.a) ? 1 : 2;
    return (sides.b == sides.c || sides.a == sides.c) ? 2 : 3;
}

int is_equilateral(triangle_t sides) {
    return is_valid_triangle(sides) && unique_sides(sides) == 1;
}

int is_isosceles(triangle_t sides) {
    return is_valid_triangle(sides) && unique_sides(sides) < 3;
}

int is_scalene(triangle_t sides) {
    return is_valid_triangle(sides) && unique_sides(sides) == 3;
}
