import '/components/selfie_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selfie_screen_widget.dart' show SelfieScreenWidget;
import 'package:flutter/material.dart';

class SelfieScreenModel extends FlutterFlowModel<SelfieScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for selfie_widget component.
  late SelfieWidgetModel selfieWidgetModel;

  @override
  void initState(BuildContext context) {
    selfieWidgetModel = createModel(context, () => SelfieWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    selfieWidgetModel.dispose();
  }
}
