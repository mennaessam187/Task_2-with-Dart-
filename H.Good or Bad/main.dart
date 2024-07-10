import 'dart:ffi';
import 'dart:io';

void main() {
  //that list is determine the state of each Strig is bad or good from input
  List<String> goodorbad = [];
  stdout.writeln("Enter the number of test cases");
  String cases = stdin.readLineSync()!;
  print("(Input)");
  print("#############################");
  for (int i = 0; i < int.parse(cases); i++) {
    String namei = stdin.readLineSync()!;
    if (namei.contains("010") || namei.contains("101")) {
      goodorbad.add("Good");
    } else {
      goodorbad.add("bad");
    }
  }
  print("(output)");
  print("#############################");
  goodorbad.forEach((element) {
    print(element);
  });
}
