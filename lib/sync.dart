import 'dart:io';

void main(List<String> args) {
  performTask();
}

void performTask() {
  task1();
  task2();
  task3();
}

void task1() {
  String result = "Task 1 data";
  print(result);
}

void task2() async {
  Duration d = Duration(seconds: 3);
  sleep(d);
  String result = "Task 2 data";
  print(result);
}

void task3() {
  String result = "Task 3 data";
  print(result);
}
