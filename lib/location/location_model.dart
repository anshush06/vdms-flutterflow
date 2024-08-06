import '/flutter_flow/flutter_flow_util.dart';
import 'location_widget.dart' show LocationWidget;
import 'package:flutter/material.dart';

class LocationModel extends FlutterFlowModel<LocationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
