import 'package:flutter/material.dart';
//import 'dart:async';

class MyProvider with ChangeNotifier {
  int _count = -20;
  int get count => _count;

  /*MyProvider() {
    Timer.periodic(Duration(seconds: 10), (timer) {
      incrementCount();
    });
  }*/

  void incrementCount() {
    _count++;
    notifyListeners();
  }
}
