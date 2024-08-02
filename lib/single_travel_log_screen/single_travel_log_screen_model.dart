import '/flutter_flow/flutter_flow_util.dart';
import 'single_travel_log_screen_widget.dart' show SingleTravelLogScreenWidget;
import 'package:flutter/material.dart';

class SingleTravelLogScreenModel
    extends FlutterFlowModel<SingleTravelLogScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
