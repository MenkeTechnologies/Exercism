triangle(A, B, C) :- A > 0, B > 0, C > 0, A + B >= C, B + C >= A, C + A >= B.
triangle(A, A, A, "equilateral") :- triangle(A, A, A), !.
triangle(A, A, B, "isosceles") :- triangle(A, A, B), !.
triangle(A, B, A, "isosceles") :- triangle(A, B, A), !.
triangle(B, A, A, "isosceles") :- triangle(B, A, A), !.
triangle(A, B, C, "scalene") :- triangle(A, B, C), A\==B, B\==C, C\==A.
