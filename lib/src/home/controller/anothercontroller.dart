import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class AnotherController extends ControllerMVC with AppControllerMVC {
  factory AnotherController() => _this ??= AnotherController._();
  AnotherController._();
  static AnotherController? _this;

  /// The framework will call this method exactly once.
  /// Only when the [StateMVC] object is first created.
  @override
  void initState() {
    super.initState();
    //ignore: avoid_print
    print('didUpdateWidget');
  }

  /// The framework calls this method whenever it removes this [StateMVC] object
  /// from the tree.
  @override
  void deactivate() {
    //ignore: avoid_print
    print('didUpdateWidget');
  }

  /// The framework calls this method when this [StateMVC] object will never
  /// build again.
  /// Note: THERE IS NO GUARANTEE THIS METHOD WILL RUN in the Framework.
  @override
  void dispose() {
    super.dispose();
    //ignore: avoid_print
    print('didUpdateWidget');
  }

  /// Override this method to respond when the [widget] changes (e.g., to start
  /// implicit animations).
  @override
  void didUpdateWidget(StatefulWidget oldWidget) {
    //ignore: avoid_print
    print('didUpdateWidget');
  }

  /// Called when a dependency of this [StateMVC] object changes.
  @override
  void didChangeDependencies() {
    //ignore: avoid_print
    print('didUpdateWidget');
  }

  /// Called whenever the application is reassembled during debugging, for
  /// example during hot reload.
  @override
  void reassemble() {
    //ignore: avoid_print
    print('didUpdateWidget');
  }

  /// Called when the system tells the app to pop the current route.
  /// For example, on Android, this is called when the user presses
  /// the back button.
  @override
  Future<bool> didPopRoute() async {
    //ignore: avoid_print
    print('didUpdateWidget');
    return true;
  }

  /// Called when the host tells the app to push a new route onto the
  /// navigator.
  @override
  Future<bool> didPushRoute(String route) async {
    //ignore: avoid_print
    print('didUpdateWidget');
    return true;
  }

  /// Called when the application's dimensions change. For example,
  /// when a phone is rotated.
  @override
  void didChangeMetrics() {
    //ignore: avoid_print
    print('didChangeMetrics');
  }

  /// Called when the platform's text scale factor changes.
  @override
  void didChangeTextScaleFactor() {
    //ignore: avoid_print
    print('didChangeTextScaleFactor');
  }

  /// Brightness changed.
  @override
  void didChangePlatformBrightness() {
    //ignore: avoid_print
    print('didChangePlatformBrightness');
  }

  /// Called when the system tells the app that the user's locale has changed.
  @override
  void didChangeLocale(Locale locale) {
    //ignore: avoid_print
    print('didChangeLocale');
  }

  /// Called when the system puts the app in the background or returns the app to the foreground.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    /// Passing these possible values:
    /// AppLifecycleState.paused (may enter the suspending state at any time)
    /// AppLifecycleState.resumed
    /// AppLifecycleState.inactive (may be paused at any time)
    /// AppLifecycleState.suspending (Android only)
    //ignore: avoid_print
    print('didChangeAppLifecycleState');
  }

  /// Called when the system is running low on memory.
  @override
  void didHaveMemoryPressure() {
    //ignore: avoid_print
    print('didHaveMemoryPressure');
  }

  /// Called when the system changes the set of active accessibility features.
  @override
  void didChangeAccessibilityFeatures() {
    //ignore: avoid_print
    print('didChangeAccessibilityFeatures');
  }
}