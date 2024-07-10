import 'dart:io';

void main() {
  stdout.writeln("Enter tha first and second String");
  String FirstString = stdin.readLineSync()!;
  String SecondString = stdin.readLineSync()!;
  print("Input");
  print("##############################");
  stdout.writeln("$FirstString");
  stdout.writeln("$SecondString");
  print("Output");
  print("##############################");
  print("${FirstString.length}     ${SecondString.length}");
  print("$FirstString  $SecondString");
}
