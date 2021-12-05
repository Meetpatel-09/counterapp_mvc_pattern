import 'package:counterapp_mvc_pattern/src/model.dart';
import 'package:counterapp_mvc_pattern/src/view.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:counterapp_mvc_pattern/src/controller.dart';

/// The Home page
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title = 'Flutter Demo'}) : super(key: key);

  // Fields in a StatefulWidget should always be "final".
  final String title;

  @override
  State createState() => MyHomePageState();
}

/// This 'MVC version' is a subclass of the usual State<StatefulWidget>
/// It allows you to handle all the 'events' that routinely occur on a running device
class MyHomePageState extends StateMVC<MyHomePage> {
  /// Free up your State objects and handle the 'business logic' in a Controller
  MyHomePageState() : super(Controller()) {
    /// Acquire a reference to the particular Controller.
    con = controller as Controller;
  }
  late Controller con;

  @override
  void initState() {
    super.initState();

    /// Retrieve the 'app level' State object
    appState = AnotherController().ofState<View>()!;

    /// For testing purposes, supply this StateMVC object's unique identifier
    /// to its StatefulWidget.
    MyApp.homeStateKey = keyId;
  }

  late AppStateMVC appState;

  /// This is 'the View'; the interface of the home page.
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Display the App's data object if it has something to display
          if (appState.dataObject != null && appState.dataObject is String)
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text(
                appState.dataObject as String,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                ),
              ),
            ),
          Text(
            'You have pushed the button this many times:',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            '${con.count}',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(con.incrementCounter);
      },

      /// You can separate further the roles of work between the controller and interface
//          onPressed: con.onPressed,
      child: const Icon(Icons.add),
    ),
  );

  /// Supply an error handler for Unit Testing.
  @override
  void onError(FlutterErrorDetails details) {
    /// Error is now handled.
  }
}
