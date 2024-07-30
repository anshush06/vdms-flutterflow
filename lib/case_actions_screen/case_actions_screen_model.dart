import '/flutter_flow/flutter_flow_util.dart';
import 'case_actions_screen_widget.dart' show CaseActionsScreenWidget;
import 'package:flutter/material.dart';

class CaseActionsScreenModel extends FlutterFlowModel<CaseActionsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
