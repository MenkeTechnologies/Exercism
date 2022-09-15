#pragma once

typedef struct {
    double a;
    double b;
    double c;
} triangle_t;

int is_equilateral(triangle_t sides);

int is_isosceles(triangle_t sides);

int is_scalene(triangle_t sides);
