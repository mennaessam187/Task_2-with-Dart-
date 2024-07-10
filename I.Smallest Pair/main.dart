import 'dart:io';

void main() {
  int allPossible;
  late int smallestPair;
  List<int> num = [];
  List<int> output = [];
  stdout.writeln("Enter the number of test casses");
  String casesTest = stdin.readLineSync()!;
  print("(input)");
  print("############################");
  for (int i = 0; i < int.parse(casesTest); i++) {
    stdout.writeln("the length");
    String listlength = stdin.readLineSync()!;
    int lengthoflist = int.parse(listlength);
    stdout.writeln("the list");
    List<int> num = [];
    List<String> element = stdin.readLineSync()!.split(' ');
    if ((element.length) > lengthoflist || (element.length) < lengthoflist) {
      print(
          "((element.length) Must Identiacl lengthoflist) try again gentelman");
    } else {
      for (int j = 0; j < lengthoflist; j++) {
        num.add(int.parse(element[j]));
      }
    }
    for (int f = 1; f <= lengthoflist - 1; f++) {
      for (int g = f + 1; g <= lengthoflist; g++) {
        allPossible = num[f - 1] + num[g - 1] + (g - f);
        output.add(allPossible);
      }
    }
  }

  print("(output)");
  print("############################");
  output.forEach((element) {
    print(element);
  });
  smallestPair = output[0];
  for (int i = 1; i < output.length; i++) {
    if ((output[i]) < smallestPair) {
      smallestPair = output[i];
    }
  }
  print("So the smallest possible result is $smallestPair");
}
