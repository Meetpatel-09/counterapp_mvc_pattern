
import 'package:counterapp_mvc_pattern/src/view.dart';
import 'package:counterapp_mvc_pattern/src/controller.dart';
import 'package:counterapp_mvc_pattern/src/model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';


class Controller extends ControllerMVC {
  factory Controller([StateMVC? state]) => _this ??= Controller._(state);
  Controller._(StateMVC? state) : super(state);
  static Controller? _this;

  late Model _model;


  @override
  void initState() {
    super.initState();
    _model = Model(state);
  }

  /// Note, the count comes from a separate class, _Model.
  int get count => _model.counter;

  // The Controller knows how to 'talk to' the Model.
  void incrementCounter() {
    _model.incrementCounter();

    /// At thr count of 20, say hello.
    if (_model.counter == 20) {
      /// Retrieve the 'app level' State object
      final appState = AnotherController().ofState<View>()!;
      appState.dataObject = 'Hello there!';
    }
  }

  /// Call the State object's setState() function to reflect the change.
  void onPressed() => setState(() => _model.incrementCounter());
}
