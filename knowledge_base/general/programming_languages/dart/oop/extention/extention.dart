import 'average_of_nums.dart' as first;
import 'second_ext.dart' hide SecondAverage;

void main() {
  var nums = [1, 2, 3, 4, 5];

  print("average of nums: ${nums.average()}");

  dynamic realNums = [1.0, 2.0, 3.0, 4.0];
  print("average of realNums: ${realNums.average()}");

  var firstAverage = first.AverageOfNums(nums).average();
}
