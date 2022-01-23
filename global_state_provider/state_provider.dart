import 'package:flutter/material.dart';

class Count with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void updateValue({int x = 0}) {
    _count += x;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
