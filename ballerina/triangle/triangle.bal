enum TriangleType {
    EQUILATERAL,
    ISOSCELES,
    SCALENE
}
function kind(anydata[] sides, TriangleType t) returns boolean {
    if !valid(sides) {
        return false;
    }
    match t {
        EQUILATERAL => {
            return sides[0] == sides[1] && sides[1] == sides[2];
        }
        ISOSCELES => {
            return sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2];
        }
        SCALENE => {
            return sides[0] != sides[1] && sides[1] != sides[2] && sides[0] != sides[2];
        }
    }
    return false;
}
function valid(anydata[] sides) returns boolean {
    if sides is float[] {
        float[] sorted = sides.sort();
        return sorted[0] > 0.0 && sorted[0] + sorted[1] > sorted[2];
    } else if sides is int[]{
        int[] sorted = sides.sort();
        return sorted[0] > 0 && sorted[0] + sorted[1] > sorted[2];
    }
    return false;
}
