import 'package:flutter/material.dart';

class CounterAppState extends ChangeNotifier {
  int? i = 0;

  void increment() {
    i = i! +
        1; //The operator '+' can't be unconditionally invoked because the receiver can be 'null'
    notifyListeners();
  }

  void decrement() {
    i = i! - 1;
    notifyListeners();
  }
}
