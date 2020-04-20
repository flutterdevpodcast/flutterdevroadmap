// Расширение для списка,
// которое считает среднее арифметическое значение элементов списка
extension AverageOfNums on List<num> {
  double average() {
    num sum = 0;
    for (num number in this) {
      sum += number;
    }
    return sum / this.length;
  }
}
