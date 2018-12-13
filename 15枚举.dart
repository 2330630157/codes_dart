main(List<String> args) {
  Colors c = Colors.blue;
  print(c);
  print(c.index);
  List<Colors> colors = Colors.values;
  // print(colors);
  colors.forEach(print);

  switch (c) {
    case Colors.red:
      print('red');
      break;
    case Colors.white:
      print('white');
      break;
    case Colors.blue:
      print('blue');
      break;
  }
}

enum Colors { red, white, blue }
