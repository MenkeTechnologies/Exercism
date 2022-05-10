class Triangle {
  bool valid(List<double> sorted) {
    sorted.sort();
    return sorted.every((element) => element > 0) &&
        sorted[0] + sorted[1] >= sorted[2];
  }

  bool equilateral(double a, double b, double c) {
    List<double> list = [a, b, c];
    return valid(list) && list.toSet().length == 1;
  }

  bool isosceles(double a, double b, double c) {
    List<double> list = [a, b, c];
    return valid(list) && list.toSet().length < 3;
  }

  bool scalene(double a, double b, double c) {
    List<double> list = [a, b, c];
    return valid(list) && list.toSet().length == 3;
  }
}
