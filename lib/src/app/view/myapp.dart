import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'package:counterapp_mvc_pattern/src/controller.dart';
import 'package:counterapp_mvc_pattern/src/view.dart';

class MyApp extends AppStatefulWidgetMVC {
  MyApp({Key? key}) : super(key: key, con: AnotherController());

  /// For testing purposes, supply this StatefulWidget its State object's unique identifier
  static String? homeStateKey;

  /// The app's State object is named, View.
  /// Name yours whatever you want.
  @override
  AppStateMVC createState() => View();
}