import '/flutter_flow/flutter_flow_util.dart';
import 'travel_logs_screen_widget.dart' show TravelLogsScreenWidget;
import 'package:flutter/material.dart';

class TravelLogsScreenModel extends FlutterFlowModel<TravelLogsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
