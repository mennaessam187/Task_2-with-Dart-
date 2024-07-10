import 'dart:io';

void main() {
  stdout.writeln("Enter the size of arrays please");
  String arraysLength = stdin.readLineSync()!;
  //convert from String to Integer
  int arraysLength1 = int.parse(arraysLength);
  List<int> arrayA = [];
  List<int> arrayB = [];
  List<int> arrayC = [];

  print("(Input)");
  print("########################");
  List<String> element1 = stdin.readLineSync()!.split(' ');
  if ((element1.length) > arraysLength1 || (element1.length) < arraysLength1) {
    print("((element.length) Must Identiacl lengthoflist) try again gentelman");
  } else {
    for (int j = 0; j < arraysLength1; j++) {
      arrayA.add(int.parse(element1[j]));
    }
  }
  List<String> element2 = stdin.readLineSync()!.split(' ');
  if ((element2.length) > arraysLength1 || (element2.length) < arraysLength1) {
    print("((element.length) Must Identiacl lengthoflist) try again gentelman");
  } else {
    for (int j = 0; j < arraysLength1; j++) {
      arrayB.add(int.parse(element2[j]));
    }
  }
  print("(output)");
  print("########################");
  arrayC.addAll(arrayB);
  arrayC.addAll(arrayA);
  print(arrayC.join(' '));
}
