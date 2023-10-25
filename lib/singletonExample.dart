import 'package:flutter/material.dart';

class MySingletonExample {
  
  MySingletonExample._internal();
  static final MySingletonExample _singleton = MySingletonExample._internal();
  factory MySingletonExample() => _singleton;

  String GetFirstData() {
    return 'Data from MySingletonExample GetFirstData';
  }

  String GetSecondtData() {
    return 'Data from MySingletonExample GetSecondtData';
  }
}
