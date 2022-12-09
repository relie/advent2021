import 'dart:convert';
import 'dart:io';

void day01() {
  File('./bin/day01/input.txt').readAsString().then((String contents) {
    // part1(LineSplitter().convert(contents));
    part2(LineSplitter().convert(contents));
  });
}

void part1(List<String> input) {
  int incCnt = 0;
  for (int r = 0; r < input.length-1; r++) {
    int a = int.parse(input[r]);
    int b = int.parse(input[r+1]);
    if (a < b) {
      incCnt++;
    }
  }

  print('Readings increased $incCnt times');
}

void part2(List<String> input) {
  int incCnt = 0;
  int itemCnt = 4;
  for (int r = 0; r < input.length-itemCnt+1; r++) {
    List<int> items = input.sublist(r, r+itemCnt).map((e) => int.parse(e)).toList();
    if (items[0]+items[1]+items[2] < items[1]+items[2]+items[3]) {
      incCnt++;
    }
  }

  print('Readings increased $incCnt times');
}