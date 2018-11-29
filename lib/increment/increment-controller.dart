import 'dart:async';

import 'package:flutter_hello_bloc/bloc/bloc_pattern.dart';

class IncrementController implements BlocBase {
  var _counter = 0;

  var _counterController = StreamController<int>();

  Stream<int> get outCounter => _counterController.stream;

  Sink<int> get inCounter => _counterController.sink;

  void increment() {
    _counter++;
    inCounter.add(_counter);
  }

  @override
  void dispose() {
    _counterController.close();
  }
}
