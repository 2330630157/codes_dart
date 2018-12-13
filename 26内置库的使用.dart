import 'dart:core';
import 'dart:convert';

main(List<String> args) {
  // _test1();
  // _test2();
  // _test3();
  // _test4();
  // _test5();
}

void _test5() {
  dynamic list = <A>[
    A(2),
    A(30),
    A(100),
  ];

  String s = jsonEncode(list);
  print(s);
}

class A {
  int score;
  A(this.score);

  A.fromJson(Map a) {
    score = a['score'];
  }

  Map toJson() => {'score': score, 'test': 11};

  @override
  String toString() {
    return 'A{score:$score}';
  }
}

void _test4() {
  final s = '''
  [
    {"score": 40},
    {"score": 80}
  ]
  ''';
  final List l = jsonDecode(s);
  final List<A> list2 = l.map((a) => A.fromJson(a)).toList();
  print(list2);
  assert(list2 is List<A>);
  list2.forEach(print);
}

void _test3() {
  final list = [
    {"score": 40},
    {"score": 80}
  ];
  final s = jsonEncode(
    list,
  );
  print(s);
  assert(s == '''[{"score":40},{"score":80}]''');
}

void _test2() {
  // Comparable
  final s = '''
  [
    {"score": 40},
    {"score": 80}
  ]
  ''';
  final l = jsonDecode(s);
  print(l);
  print(l.runtimeType);
  assert(l is List<dynamic>);
  // assert(l is List<Map<String, int>>);
}

void _test1() {
  RegExp exp = new RegExp(r"(\w+)");
  String str = "Parse my string";
  Iterable<Match> matches = exp.allMatches(str);
  matches.forEach((m) {
    String s = m.group(0);
    print(s);
  });
  Map();
  List();
  Set();
  var teas = ['green', 'black', 'chamomile', 'earl grey'];

  var newTeas = <String>[];
  for (int i = 0; i < teas.length; i++) {
    String s = teas[i];
    newTeas.add(s.toUpperCase());
  }
  print(newTeas);
  newTeas.clear();
  for (var item in teas) {
    newTeas.add(item.toUpperCase());
  }
  print(newTeas);
  print('-----------------');
  var loudTeas = teas.map((tea) => tea.toUpperCase()).toList();
  print(loudTeas);

  DateTime.now();
  var moonLanding = DateTime.parse("2018-12-12T15:22:22"); //
  print(moonLanding);
  print('------------');
  print(moonLanding.toUtc());
  print(moonLanding.toString());
  print(moonLanding.toIso8601String());

  // Comparable
}
