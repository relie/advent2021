import 'dart:convert';
import 'dart:io';

void day02() {
  File('./bin/day02/input.txt').readAsString().then((String contents) {
    // part1(LineSplitter().convert(contents));
    part2(LineSplitter().convert(contents));
  });
}

void part1(List<String> input) {
  int position = 0;
  int depth = 0;

  for (final line in input) {
    List<String> parts = line.split(' ');
    int val = int.parse(parts[1]);
    if (parts[0] == 'forward') {
      position += val;
    } else if (parts[0] == 'up') {
      if ((depth - val) >= 0) {
        depth -= val;
      }
    } else if (parts[0] == 'down') {
      depth += val;
    }
  }

  print('Final position is $position and depth is $depth. Answer is ${position*depth}.');
}

void part2(List<String> input) {
  int aim = 0;
  int position = 0;
  int depth = 0;

  for (final line in input) {
    List<String> parts = line.split(' ');
    int val = int.parse(parts[1]);
    if (parts[0] == 'forward') {
      position += val;
      depth += (aim*val);
    } else if (parts[0] == 'up') {
      if ((aim - val) >= 0) {
        aim -= val;
      }
    } else if (parts[0] == 'down') {
      aim += val;
    }
  }

  print('Final values are: aim = $aim, position = $position, depth = $depth. Answer is ${position*depth}.');
}