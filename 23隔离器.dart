import 'dart:isolate';

///
///主隔离器
main(List<String> args) async {
  ReceivePort zhuRp = ReceivePort();
  Isolate.spawn(entryPoint, zhuRp.sendPort);
  SendPort ziSp1 = await zhuRp.first;

  ReceivePort zhuRp1 = ReceivePort();

  _send(ziSp1, zhuRp1);
  // String result = await zhuRp1.first;
  // print(result);
  int k = 0;
  zhuRp1.listen((msg) {
    print(msg);
    k++;
    if (k >= 5) {
      zhuRp.close();
      zhuRp1.close();
    }
  });

  // for (int i = 0; i < 5; i++) {
  //   ziSp1.send(['Bob', zhuRp1.sendPort]);
  //   await Future.delayed(Duration(milliseconds: 1000));
  // }
}

Future _send(SendPort ziSp1, ReceivePort zhuRp1) async {
  
  for (int i = 0; i < 5; i++) {
    ziSp1.send(['Bob', zhuRp1.sendPort]);
    await Future.delayed(Duration(milliseconds: 1000));
  }
}

///
///子隔离器
void entryPoint(SendPort zhuSp) async {
  ReceivePort ziRp = ReceivePort();
  zhuSp.send(ziRp.sendPort);
  await for (var msg in ziRp) {
    print(msg);
    String name = msg[0];
    SendPort zhuSp1 = msg[1];
    zhuSp1.send(name.toUpperCase());
  }
}
