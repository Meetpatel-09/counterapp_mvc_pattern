import 'package:flutter/material.dart';
import 'package:counterapp_mvc_pattern/src/view.dart';
import 'package:counterapp_mvc_pattern/src/controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class View extends AppStateMVC<MyApp> {
  factory View() => _this ??= View._();

  /// Demonstrate passing an 'object' down the Widget tree
  /// much like in the Scoped Model
  View._() : super(controller: AnotherController());
  static View? _this;

  /// Optionally you can is the framework's buildApp() function
  /// instead of its build() function.
  /// Allows for the InheritWidget feature
  @override
  Widget buildApp(BuildContext context) => const MaterialApp(
    home: MyHomePage(
      key: Key('MyHomePage'),
      title: 'MVC Design Pattern Demo App',
    ),
  );
}