import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

/// This separate class represents 'the Model' (the data) of the App.
class Model extends ModelMVC {
  factory Model([StateMVC? state]) => _this ??= Model._(state);
  Model._(StateMVC? state) : super(state);
  static Model? _this;

  int get counter => _counter;
  int _counter = 0;
  int incrementCounter() => ++_counter;
}
